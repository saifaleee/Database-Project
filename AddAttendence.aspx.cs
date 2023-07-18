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
    public partial class AddAttendence : System.Web.UI.Page
    {
        protected void dropdownselect_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedsection = dropdownselect.SelectedItem.Text;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null || Session["Role"].ToString() != "Teacher") { Response.Redirect("signInPortal.aspx"); }
            else
            {
                string teacherID = Session["UserID"].ToString();
                List<string> selectedsection = GetSectionOptionsFromDatabase(teacherID);

                dropdownselect.DataSource = selectedsection;
                dropdownselect.DataBind();

                string section = dropdownselect.SelectedItem.Text;
                DataTable feedbackdata = GetstudentsDataFromDatabase(section);

                GridView1.DataSource = feedbackdata;
                GridView1.DataBind();
            }
        }
        private List<string> GetSectionOptionsFromDatabase(string teacherID)
        {
            List<string> selectedsection = new List<string>();

            SqlConnection conn = new SqlConnection("Data Source=LPTP-BLONG2RYAN\\SQLEXPRESS02;Initial Catalog=Flex;Integrated Security=True");
            conn.Open();

            string query = "SELECT distinct SecNo FROM Course_Sections WHERE TeacherID = '" + teacherID + "'";

            using (SqlCommand cm = new SqlCommand(query, conn))
            {
                using (SqlDataReader res = cm.ExecuteReader())
                {
                    while (res.Read())
                    {
                        string secID = res.GetString(0);
                        selectedsection.Add(secID);
                    }
                }
            }
            conn.Close();

            return selectedsection;
        }
        private DataTable GetstudentsDataFromDatabase(string section)
        {
            DataTable students = new DataTable();
            students.Columns.Add("Student ID", typeof(string));

            SqlConnection conn = new SqlConnection("Data Source=LPTP-BLONG2RYAN\\SQLEXPRESS02;Initial Catalog=Flex;Integrated Security=True");
            conn.Open();

            string query = "SELECT StudentID FROM Student_In_Section WHERE SectionID = '" + section + "'";
            using (SqlCommand cm = new SqlCommand(query, conn))
            {
                using (SqlDataReader res = cm.ExecuteReader())
                {
                    while (res.Read())
                    {
                        string studID = res.GetString(0);
                        students.Rows.Add(studID);
                    }
                }
            }
            conn.Close();
            return students;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                string date = Date.Text;

                string studentID = row.Cells[0].Text;
                CheckBox chkPresence = (CheckBox)row.FindControl("chkPresence");

                bool isPresent = chkPresence.Checked;
                string status = isPresent ? "Present" : "Absent";

                SqlConnection conn = new SqlConnection("Data Source=LPTP-BLONG2RYAN\\SQLEXPRESS02;Initial Catalog=Flex;Integrated Security=True");
                conn.Open();

                conn.Close();
            }
        }
    }
}