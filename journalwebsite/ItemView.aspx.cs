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
    public partial class ItemView : System.Web.UI.Page
    {//string cs = ConfigurationManager.ConnectionStrings["journalwebsitedbConnectionString2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string i= Request.QueryString["menuscriptid"];
            SqlDataSource1.SelectParameters["id"].DefaultValue = i;
            SqlDataSource2.SelectParameters["menuscriptno"].DefaultValue = i;
           /* if (Request.QueryString["menuscriptid"] != null)
            {
                if (!IsPostBack)
                {

                //    BindDetails();
                }
            }*/
        }
             private void BindDetails()
        {

            SqlDataSource1.DataBind();
            rptrDetails.DataBind();
                        
        }

        }
    }
