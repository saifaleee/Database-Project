using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace DBProj
{
    public partial class teachersReports : System.Web.UI.Page
    {
        protected void dropdownselect_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedCourse = dropdownselect.SelectedItem.Text;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null || Session["Role"].ToString() != "Teacher") { Response.Redirect("signInPortal.aspx"); }
            else
            {
                string teacherID = Session["UserID"].ToString();
                List<string> courseOptions = GetCourseOptionsFromDatabase(teacherID);

                dropdownselect.DataSource = courseOptions;
                dropdownselect.DataBind();

                string scourse = dropdownselect.SelectedItem.Text;
                DataTable attendancerec = GetAttendanceFromDatabase(teacherID, scourse);

                GridView1.DataSource = attendancerec;
                GridView1.DataBind();
            }
        }
        private List<string> GetCourseOptionsFromDatabase(string teacherID)
        {
            List<string> courseOptions = new List<string>();

            SqlConnection conn = new SqlConnection("Data Source=LPTP-BLONG2RYAN\\SQLEXPRESS02;Initial Catalog=Flex;Integrated Security=True");
            conn.Open();

            string query = "SELECT CourseID FROM Course_Sections WHERE TeacherID = '" + teacherID + "'";

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
        private DataTable GetAttendanceFromDatabase(string TeacherID, string courseID)
        {
            DataTable attendancerec = new DataTable();
            attendancerec.Columns.Add("Student ID", typeof(string));
            attendancerec.Columns.Add("Student Name", typeof(string));
            attendancerec.Columns.Add("Course Semester", typeof(Int32));
            attendancerec.Columns.Add("Course Name", typeof(string));
            attendancerec.Columns.Add("Percentage Attendance", typeof(Decimal));

            SqlConnection conn = new SqlConnection("Data Source=LPTP-BLONG2RYAN\\SQLEXPRESS02;Initial Catalog=Flex;Integrated Security=True");
            conn.Open();

            string query = "SELECT U.UserID, CONCAT(U.FirstName, ' ', U.LastName) AS StudentName, C.Semester, C.CourseName, " +
                "((COUNT(CASE WHEN A.Status = 'Present' THEN 1 END) * 100.0) / COUNT(*)) AS AttendancePercentage " +
                "FROM Users U INNER JOIN Attendence AS A ON A.StudentID = U.UserID " +
                "INNER JOIN Courses AS C ON C.CourseID = A.CourseID " +
                "INNER JOIN Course_Sections AS cs ON cs.CourseID = C.CourseID " + 
                "WHERE C.CourseID = '" + courseID + "' AND U.Role = 'Student' " + "AND cs.TeacherID = '" + TeacherID + "' " +
                "GROUP BY C.CourseName, C.Semester, U.UserID, CONCAT(U.FirstName, ' ', U.LastName)";
                
            using (SqlCommand cm = new SqlCommand(query, conn))
            {
                using (SqlDataReader res = cm.ExecuteReader())
                {
                    while (res.Read())
                    {
                        string uid = res.GetString(0);
                        string sname = res.GetString(1);
                        Int32 csem = res.GetInt32(2);
                        string cname = res.GetString(3);
                        Decimal Perc = res.GetDecimal(4);

                        attendancerec.Rows.Add(uid, sname, csem, cname, Perc);
                    }
                }
            }
            conn.Close();
            return attendancerec;
        }
    }
}