using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem
{
    public partial class AllStudents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connString = @"Data Source=.\SQLEXPRESS;Initial Catalog=MBMDB;User ID=expressuser;Password=123456;Connect Timeout=30;";
            SqlConnection sqlConnection = new SqlConnection(connString);
            SqlCommand sqlCommand = new SqlCommand("Select * from Student", sqlConnection);
            sqlConnection.Open();
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            GridView1.DataSource = sqlDataReader;
            GridView1.DataBind();
            sqlConnection.Close();
        }
    }
}