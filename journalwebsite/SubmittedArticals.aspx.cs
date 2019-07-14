using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace journalwebsite
{
    public partial class AddAuthor : System.Web.UI.Page
    {
        Class1 c = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
             SDSMenus.SelectParameters["user"].DefaultValue = "then";
          //  SDSmenustatus.SelectParameters["user"].DefaultValue = "then";
               
        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("~/changephase.aspx");
         //   c.tit = GridView1.SelectedRow.Cells[0].Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
         
      //     string t= GridView1.SelectedRow.Cells[3].Text;
      //   c.tit = t;
        // Label1.Text = c.tit;
      //  Response.Redirect("~/changephase.aspx");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
        }
    }
}