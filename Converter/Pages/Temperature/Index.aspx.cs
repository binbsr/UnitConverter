using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Converter.Pages.Temperature
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {            
            var inputLeft = txtLeftBox.Text;
            var inUnit = DropDownList1.SelectedValue;

            var outUnit = DropDownList2.SelectedValue;
        }
    }
}