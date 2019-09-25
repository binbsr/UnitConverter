using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormFromScratch
{
    public partial class Registration2 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Response.Write("Page loaded for first-time.");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var firstName = TextBox1.Text;
            var surName = TextBox2.Text;
            var email = TextBox3.Text;
            var userImage = FileUpload1.PostedFile;
            var gender = RadioButtonList1.SelectedValue;
        }
    }
}