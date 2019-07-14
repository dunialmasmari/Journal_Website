using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace journalwebsite
{
    public partial class AddFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SDSMenusUncombleted.SelectParameters["user"].DefaultValue = "then";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/submit_new_manuscript.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //delete
          
        }
    }
}