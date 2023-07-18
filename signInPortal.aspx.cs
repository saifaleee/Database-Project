using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Xml.Linq;

namespace DBProj
{
    public partial class signInPortal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=LPTP-BLONG2RYAN\\SQLEXPRESS02;Initial Catalog=Flex;Integrated Security=True");
            conn.Open();
            SqlCommand cm;
            string un = name.Text;
            string pass = password.Text;
            string query = "SELECT u.Role FROM Users u WHERE u.UserID = '" + un + "' AND u.Password = '" + pass + "'";
            cm = new SqlCommand(query, conn);

            SqlDataReader res = cm.ExecuteReader();
            
            if (!res.HasRows)
            {
                MessageBox.Show("No such username found");
                Response.Redirect("signInPortal.aspx");
            }
            else
            {
                res.Read();
                string rolex = res.GetString(res.GetOrdinal("Role"));
                Session["UserID"] = un;
                Session["Role"] = rolex;

                if(Session["Role"].ToString() == "Student")
                    Response.Redirect("studentattendance.aspx");
                else if (Session["Role"].ToString() == "Teacher")
                    Response.Redirect("teachersReports.aspx");
                else if (Session["Role"].ToString() == "Admin")
                    Response.Redirect("academicReports.aspx");
            }

            Console.WriteLine("After method call, value of res : {0}", res);
            cm.Dispose();
            conn.Close();
        }
    }
}