using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem
{
    public partial class NewStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["MBMDBConnection"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(connString);
            SqlCommand sqlCommand = new SqlCommand("Insert into Student " +
                "(FirstName, Surname, Address, Phone, DOB, TotalFee) values " +
                "('Nabin', 'tksdfs', 'sdfsfs sdfd ss', '3242324', GETDATE(), 342242)", sqlConnection);
            sqlConnection.Open();
            int rowsAffected = sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();

            Label1.Text = rowsAffected + " rows inserted.";
        }
    }
}