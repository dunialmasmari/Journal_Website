using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace journalwebsite
{
    public partial class Sections : System.Web.UI.Page
    {string cs = ConfigurationManager.ConnectionStrings["journalwebsitedbConnectionString2"].ConnectionString;
    
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                CategoryRepeater();
            }

        }
        private void CategoryRepeater()
        {
            SDSArticals.DataBind();
            Repeater1.DataBind();
        }
        protected void rptrDetails_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {


            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                string RID = (e.Item.FindControl("hfid") as HiddenField).Value;
              



            }
        }
    }
}