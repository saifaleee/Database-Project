using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Xml.Linq;
using static System.Collections.Specialized.BitVector32;

namespace DBProj
{
    public partial class studentattendace : System.Web.UI.Page
    {
        protected void dropdownselect_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedCourse = dropdownselect.SelectedItem.Text;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["UserID"] == null || Session["Role"].ToString() != "Student") { Response.Redirect("signInPortal.aspx"); }
                else
                {
                    string studentID = Session["UserID"].ToString();
                    List<string> courseOptions = GetCourseOptionsFromDatabase(studentID);

                    dropdownselect.DataSource = courseOptions;
                    dropdownselect.DataBind();

                    string scourse = dropdownselect.SelectedItem.Text;
                    DataTable attendanceData = GetStudentAttendanceDataFromDatabase(studentID, scourse);

                    GridView1.DataSource = attendanceData;
                    GridView1.DataBind();
                }
            }
        }
        private List<string> GetCourseOptionsFromDatabase(string studentID)
        {

            List<string> courseOptions = new List<string>();

            SqlConnection conn = new SqlConnection("Data Source=LPTP-BLONG2RYAN\\SQLEXPRESS02;Initial Catalog=Flex;Integrated Security=True");
            conn.Open();

            string query = "SELECT cs.CourseID FROM Course_Sections cs INNER JOIN Student_In_Section ss ON cs.SecNo = ss.SectionID " +
                "WHERE ss.StudentID = '" + studentID + "'";

            using (SqlCommand cm = new SqlCommand(query, conn))
            {
                using (SqlDataReader res = cm.ExecuteReader())
                {
                    while (res.Read())
                    {
                        string courseID = res.GetString(0);
                        courseOptions.Add(courseID);
                    }
                }
            }
            conn.Close();

            return courseOptions;
        }
        private DataTable GetStudentAttendanceDataFromDatabase(string studentID, string courseID)
        {
            DataTable attendanceData = new DataTable();
            attendanceData.Columns.Add("Lecture", typeof(string));
            attendanceData.Columns.Add("Date", typeof(DateTime));
            attendanceData.Columns.Add("Presence", typeof(string));

            SqlConnection conn = new SqlConnection("Data Source=LPTP-BLONG2RYAN\\SQLEXPRESS02;Initial Catalog=Flex;Integrated Security=True");
            conn.Open();

            string query = "SELECT Date, Status FROM Attendence WHERE StudentID = '" + studentID + "' AND CourseID = '" + courseID + "' ORDER BY Date";

            using (SqlCommand cm = new SqlCommand(query, conn))
            {
                using (SqlDataReader res = cm.ExecuteReader())
                {
                    int i = 1;
                    while (res.Read())
                    {
                        string lecture = "Lecture " + i.ToString();
                        DateTime date = res.GetDateTime(0);
                        string presence = res.GetString(1);

                        attendanceData.Rows.Add(lecture, date, presence);
                    }
                }
            }
            conn.Close();

            return attendanceData;
        }
    }
}