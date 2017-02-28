using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Class_2_Code.code
{
    public partial class radiobutton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ShowSelected(object sender, EventArgs e)
        {
            lblResults.Text = "Selected Value(s) = ";
            foreach (ListItem item in lstOptions.Items)
            {

                if (item.Selected)
                    lblResults.Text = lblResults.Text + item.Value + " ";
            }
        }
    }
}