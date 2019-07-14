using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace journalwebsite
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditButton")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];

                Response.Redirect("~/EditUser.aspx?usersid=" + row.Cells[0].Text + "&usersname=" + row.Cells[1].Text + "&userstype=" + row.Cells[4].Text );
            } 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}