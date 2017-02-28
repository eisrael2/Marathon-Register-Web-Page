using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IsraelHW2
{
    public partial class Application : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RadioButtonList lst = new RadioButtonList();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblFirstName.Text = txtFirstName.Text;
                lblLastName.Text = txtLastName.Text;
                lblAddress1.Text = txtAddress1.Text;
                lblAddress2.Text = txtAddress2.Text;
                lblCity.Text = txtCity.Text;
                lblState.Text = txtState.Text;
                lblZipCode.Text = txtZipCode.Text;
                lblEmailAddress.Text = txtEmailAddress.Text;
                lblUserName.Text = txtUserName.Text;
                lblAge.Text = txtAge.Text;
                pnlForm.Visible = false;
                String age = lstAges.SelectedValue;
                String run = lstRuns.SelectedValue;
                String train = lstTrains.SelectedValue;
                pnlThankYou.Visible = true;
            }
            else
            {
                <p>Your information was not correct</p>
            }
        }

        
    }
}