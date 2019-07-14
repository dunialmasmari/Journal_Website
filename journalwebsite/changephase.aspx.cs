using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace journalwebsite
{
    public partial class changephase : System.Web.UI.Page
    {
        Class1 c = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            menutitle.Text = Request.QueryString["menuscript_title"];
            menutype.Text = Request.QueryString["sectionname"];
         currentphase.Text = Request.QueryString["menustatusnname"];
         string id = Request.QueryString["menuscriptid"];
         SDSmenustatus.UpdateParameters["menuscriptid"].DefaultValue = id;

         SDSAllstatus.InsertParameters["menuscriptid"].DefaultValue = id;
         SDSAllstatus.InsertParameters["date"].DefaultValue = DateTime.Now.ToString();
         SDSAllstatus.InsertParameters["userno"].DefaultValue = 1.ToString();
        }

        protected void Done_Click(object sender, EventArgs e)
        {
            SDSAllstatus.Insert();
            SDSmenustatus.Update();
            Response.Redirect("~/AdminSection.aspx");
        }
    }
}