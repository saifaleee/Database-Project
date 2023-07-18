using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Sockets;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace DBProj
{
    public partial class addUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null || Session["Role"].ToString() != "Admin") { Response.Redirect("signInPortal.aspx"); }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string[] userdata = { fname.Text, lname.Text, cnic.Text, role.Text, phone.Text, email.Text, adress.Text, password.Text };

            SqlConnection conn = new SqlConnection("Data Source=LPTP-BLONG2RYAN\\SQLEXPRESS02;Initial Catalog=Flex;Integrated Security=True");
            conn.Open();
            SqlCommand cm;

            string query = "SELECT * FROM Users WHERE CNIC = '" + userdata[2] + "' OR PhoneNo = " + userdata[4];
            cm = new SqlCommand(query, conn);
            SqlDataReader res = cm.ExecuteReader();
            cm.Dispose();

            if (res.HasRows)
            {
                MessageBox.Show("User Already exists.");
                res.Close();
            }
            else
            {
                res.Close();

                SqlCommand cm1, cm2, cm3, cm4;

                string lastuserID;
                string query1 = "SELECT MAX(UserID) FROM Users";
                cm1 = new SqlCommand(query1, conn);
                lastuserID = cm1.ExecuteScalar()?.ToString();
                cm1.Dispose();

                int uidNumber = int.Parse(lastuserID.Substring(2));
                string newuserID = "U-" + (uidNumber + 1);

                string query2 = "INSERT INTO Users VALUES ('" + newuserID + "', '" + userdata[2] + "', '" + userdata[0] + "', '" + userdata[1] 
                    + "', '" + userdata[3] + "', " + userdata[4] + ", '" + userdata[5] + "', '" + userdata[6] + "', '" + userdata[7] + "')";
                cm2 = new SqlCommand(query2, conn);
                cm2.ExecuteNonQuery();
                cm2.Dispose();

                MessageBox.Show("User Added.");
            }
            conn.Close();
        }
    }
}