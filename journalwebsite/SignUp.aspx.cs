using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;

namespace journalwebsite
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SDSAddUser.InsertParameters["utype"].DefaultValue = 3.ToString();
        }

        protected void btSignup_Click(object sender, EventArgs e)
        {
            if (tbUname.Text != "" & tbPass.Text != null && tbPhone.Text != null && tbEmail.Text != null && tbCPass.Text != null)
            {

                SDSAddUser.Insert();
                lblmg.Text = "Registeration Successfu!";
                lblmg.ForeColor = Color.Green;
                Response.Redirect("~/LogIn.aspx");
                tbUname.Text = string.Empty;
                tbPass.Text = string.Empty;
                tbCPass.Text = string.Empty;
                tbEmail.Text = string.Empty;
                tbPhone.Text = string.Empty;

            }


            else
            {
                lblmg.ForeColor = Color.Red;
                lblmg.Text = "All Fields are Mandatory";
            }
        }
    }
}