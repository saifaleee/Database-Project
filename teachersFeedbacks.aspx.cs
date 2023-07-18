using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBProj
{
    public partial class teachersFeedbacks : System.Web.UI.Page
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

                string selectedCourse = dropdownselect.SelectedItem.Text;
                DataTable feedbackdata = GetFeedbackDataFromDatabase(teacherID, selectedCourse);

                GridView1.DataSource = feedbackdata;
                GridView1.DataBind();

                DataTable comments = GetCommentsFromDatabase(teacherID, selectedCourse);

                GridView2.DataSource = comments;
                GridView2.DataBind();

            }
        }
        private List<string> GetCourseOptionsFromDatabase(string teacherID)
        {
            List<string> courseOptions = new List<string>();

            SqlConnection conn = new SqlConnection("Data Source=LPTP-BLONG2RYAN\\SQLEXPRESS02;Initial Catalog=Flex;Integrated Security=True");
            conn.Open();

            string query = "SELECT distinct CourseID FROM Feedbacks WHERE TeacherID = '" + teacherID + "'";

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
        private DataTable GetFeedbackDataFromDatabase(string TeacherID, string courseID)
        {
            DataTable feedbackdata = new DataTable();
            feedbackdata.Columns.Add("Appearance", typeof(Int32));
            feedbackdata.Columns.Add("Profession Practice", typeof(Int32));
            feedbackdata.Columns.Add("Teaching", typeof(Int32));
            feedbackdata.Columns.Add("Student Treatment", typeof(Int32));

            SqlConnection conn = new SqlConnection("Data Source=LPTP-BLONG2RYAN\\SQLEXPRESS02;Initial Catalog=Flex;Integrated Security=True");
            conn.Open();

            string query = "SELECT SUM(Appearance)/COUNT(*) AS appearances, " +
                "SUM(ProfPractice)/COUNT(*) AS Profes, SUM(Teaching)/COUNT(*) AS teach, " +
                "SUM(StudentTreatment)/COUNT(*) AS Treatment FROM Feedbacks " +
                "WHERE TeacherID = '" + TeacherID + "' AND CourseID = '" + courseID + "'";

            using (SqlCommand cm = new SqlCommand(query, conn))
            {
                using (SqlDataReader res = cm.ExecuteReader())
                {
                    while (res.Read())
                    {
                        Int32 appear = res.GetInt32(0);
                        Int32 practice = res.GetInt32(1);
                        Int32 teachin = res.GetInt32(2);
                        Int32 treat = res.GetInt32(3);

                        feedbackdata.Rows.Add(appear, practice, teachin, treat);
                    }
                }
            }
            conn.Close();
            return feedbackdata;
        }

        private DataTable GetCommentsFromDatabase(string TeacherID, string courseID)
        {
            DataTable feedbackdata = new DataTable();
            feedbackdata.Columns.Add("Comments", typeof(string));

            SqlConnection conn = new SqlConnection("Data Source=LPTP-BLONG2RYAN\\SQLEXPRESS02;Initial Catalog=Flex;Integrated Security=True");
            conn.Open();

            string query = "SELECT Comments FROM Feedbacks " +
                "WHERE TeacherID = '" + TeacherID + "' AND CourseID = '" + courseID + "'";

            using (SqlCommand cm = new SqlCommand(query, conn))
            {
                using (SqlDataReader res = cm.ExecuteReader())
                {
                    while (res.Read())
                    {
                        string commnt = res.GetString(0);

                        feedbackdata.Rows.Add(commnt);
                    }
                }
            }
            conn.Close();
            return feedbackdata;
        }
    }
}