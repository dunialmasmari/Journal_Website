using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace journalwebsite
{
    public partial class EditUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            no.Text = Request.QueryString["usersid"];
            name.Text = Request.QueryString["usersname"];
            currenttype.Text = Request.QueryString["userstype"];
          
        }

        protected void Done_Click(object sender, EventArgs e)
        {
            
            SDSuser.Update();
            Response.Redirect("~/Users.aspx");
        }
    }
}