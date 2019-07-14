using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace journalwebsite
{
    public partial class AdminSection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SDSMenus.SelectParameters["user"].DefaultValue = "then";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
          
            if (e.CommandName == "EditButton")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
              
                Response.Redirect("~/changephase.aspx?sectionname=" + row.Cells[1].Text + "&menuscript_title=" + row.Cells[2].Text + "&menustatusnname=" + row.Cells[4].Text+"&menuscriptid="+row.Cells[0].Text);
            }  
        }
    }
}