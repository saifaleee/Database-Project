using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using static System.Collections.Specialized.BitVector32;

namespace DBProj
{
    public partial class academicReports : System.Web.UI.Page
    {
        protected void dropdownselect_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sectionitem = dropdownselect.SelectedItem.Text;
            DataTable sectionData = GetStudentSectionDataFromDatabase(sectionitem);
            
            GridView1.DataSource = sectionData;
            GridView1.DataBind();
        }
        protected void dropdownsemester_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selecteditem = DropDownSemester.SelectedItem.Text;
            DataTable coursedata = GetcourseDataFromDatabase(selecteditem);

            GridView2.DataSource = coursedata;
            GridView2.DataBind();

        }
        protected void dropdowncourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            string courseselected = DropDownCourse.SelectedItem.Text; 
            DataTable CourseData = GetCourseAllocDataFromDatabase(courseselected);

            GridView3.DataSource = CourseData;
            GridView3.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null || Session["Role"].ToString() != "Admin") { Response.Redirect("signInPortal.aspx"); }
            else
            {
                if (!IsPostBack)
                {
                    List<string> sectionOptions = GetSectionOptionsFromDatabase();

                    dropdownselect.DataSource = sectionOptions;
                    dropdownselect.DataBind();

                    List<string> selecteditem = new List<string>();
                    for (int i = 1; i <= 8; i++)
                        selecteditem.Add(i.ToString());

                    DropDownSemester.DataSource = selecteditem;
                    DropDownSemester.DataBind();

                    List<string> courseOptions = GetCourseOptionsFromDatabase();

                    DropDownCourse.DataSource = courseOptions;
                    DropDownCourse.DataBind();
                }

                string section = dropdownselect.SelectedItem.Text;
                DataTable sectionData = GetStudentSectionDataFromDatabase(section);
                GridView1.DataSource = sectionData;
                GridView1.DataBind();

                string semester = DropDownSemester.SelectedItem.Text;
                DataTable coursedata = GetcourseDataFromDatabase(semester);

                GridView2.DataSource = coursedata;
                GridView2.DataBind();

                string course = DropDownCourse.SelectedItem.Text;
                DataTable CourseData = GetCourseAllocDataFromDatabase(course);

                GridView3.DataSource = CourseData;
                GridView3.DataBind();
            }
        }
        private List<string> GetSectionOptionsFromDatabase()
        {

            List<string> sectionOptions = new List<string>();

            SqlConnection conn = new SqlConnection("Data Source=LPTP-BLONG2RYAN\\SQLEXPRESS02;Initial Catalog=Flex;Integrated Security=True");
            conn.Open();

            string query = "SELECT DISTINCT SecNo FROM Course_Sections";

            using (SqlCommand cm = new SqlCommand(query, conn))
            {
                using (SqlDataReader res = cm.ExecuteReader())
                {
                    while (res.Read())
                    {
                        string secID = res.GetString(0);
                        sectionOptions.Add(secID);
                    }
                }
            }
            conn.Close();

            return sectionOptions;
        }
        private List<string> GetCourseOptionsFromDatabase()
        {

            List<string> CourseOption = new List<string>();

            SqlConnection conn = new SqlConnection("Data Source=LPTP-BLONG2RYAN\\SQLEXPRESS02;Initial Catalog=Flex;Integrated Security=True");
            conn.Open();

            string query = "SELECT CourseID FROM Courses";

            using (SqlCommand cm = new SqlCommand(query, conn))
            {
                using (SqlDataReader res = cm.ExecuteReader())
                {
                    while (res.Read())
                    {
                        string courseID = res.GetString(0);
                        CourseOption.Add(courseID);
                    }
                }
            }
            conn.Close();

            return CourseOption;
        }
        private DataTable GetStudentSectionDataFromDatabase(string section)
        {
            DataTable sectionData = new DataTable();
            sectionData.Columns.Add("Section", typeof(string));
            sectionData.Columns.Add("Student ID", typeof(string));
            sectionData.Columns.Add("Student Name", typeof(string));

            SqlConnection conn = new SqlConnection("Data Source=LPTP-BLONG2RYAN\\SQLEXPRESS02;Initial Catalog=Flex;Integrated Security=True");
            conn.Open();

            string query = "SELECT ss.StudentID, u.FirstName " +
                "FROM( " +
                    "SELECT s.StudentID, ROW_NUMBER() OVER (ORDER BY StudentID) AS RowNum " +
                    "FROM Student_In_Section s WHERE s.SectionID = '" + section + "') AS ss " +
                    "INNER JOIN Users u ON ss.StudentID = u.UserID " +
                    "WHERE ss.RowNum > 0";

            using (SqlCommand cm = new SqlCommand(query, conn))
            {
                using (SqlDataReader res = cm.ExecuteReader())
                {
                    int i = 1;
                    while (res.Read())
                    {
                        string id = res.GetString(0);
                        string name = res.GetString(1);

                        sectionData.Rows.Add(section, id, name);
                    }
                }
            }
            conn.Close();
            return sectionData;
        }
        private DataTable GetcourseDataFromDatabase(string semester)
        {
            DataTable courseData = new DataTable();
            courseData.Columns.Add("Course ID", typeof(string));
            courseData.Columns.Add("Course Name", typeof(string));
            courseData.Columns.Add("Credit Hours", typeof(Int32));

            SqlConnection conn = new SqlConnection("Data Source=LPTP-BLONG2RYAN\\SQLEXPRESS02;Initial Catalog=Flex;Integrated Security=True");
            conn.Open();

            string query = "SELECT CourseID, CourseName, Credit_Hours FROM Courses WHERE Semester = '" + semester + "'";

            using (SqlCommand cm = new SqlCommand(query, conn))
            {
                using (SqlDataReader res = cm.ExecuteReader())
                {
                    int i = 1;
                    while (res.Read())
                    {
                        string id = res.GetString(0);
                        string name = res.GetString(1);
                        Int32 hrs = res.GetInt32(2);

                        courseData.Rows.Add(id, name, hrs);
                    }
                }
            }
            conn.Close();
            return courseData;
        }
        private DataTable GetCourseAllocDataFromDatabase(string courseID)
        {
            DataTable courseData = new DataTable();
            courseData.Columns.Add("Course ID", typeof(string));
            courseData.Columns.Add("Course Name", typeof(string));
            courseData.Columns.Add("Credit Hours", typeof(Int32));
            courseData.Columns.Add("Sections", typeof(string));
            courseData.Columns.Add("Instructors", typeof(string));
            courseData.Columns.Add("Course Coordinator", typeof(string));

            SqlConnection conn = new SqlConnection("Data Source=LPTP-BLONG2RYAN\\SQLEXPRESS02;Initial Catalog=Flex;Integrated Security=True");
            conn.Open();

            string query = "SELECT c.CourseName, c.Credit_Hours, cs.SecNo, CONCAT(f.FirstName, ' ', f.LastName) AS InstructorFullName, " +
                "CONCAT(FF.FirstName, ' ', FF.LastName) AS CoordinatorFullName FROM Courses AS c " +
                "INNER JOIN Course_Sections AS cs ON cs.CourseID = c.CourseID " +
                "INNER JOIN users AS f ON cs.TeacherID = f.UserID " +
                "INNER JOIN Course_Coordinator AS CC ON CC.CourseID = c.CourseID " +
                "INNER JOIN users AS FF on CC.FacultyID = FF.UserID " +
                "WHERE c.CourseID = '" + courseID + "'";

            using (SqlCommand cm = new SqlCommand(query, conn))
            {
                using (SqlDataReader res = cm.ExecuteReader())
                {
                    int i = 1;
                    while (res.Read())
                    {
                        string name = res.GetString(0);
                        Int32 hrs = res.GetInt32(1);
                        string sec = res.GetString(2);
                        string instname = res.GetString(3);
                        string coordname = res.GetString(4);

                        courseData.Rows.Add(courseID, name, hrs, sec, instname, coordname);
                    }
                }
            }
            conn.Close();
            return courseData;
        }
    }
}