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
    public partial class LogIn : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["journalwebsitedbConnectionString2"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["usersname"] != null && Request.Cookies["userspw"] != null)
                {
                    UserName.Text = Request.Cookies["usersname"].Value;
                    Password.Attributes["value"] = Request.Cookies["userspw"].Value;
                    chkDontForget.Checked = true;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from users where usersname='" + UserName.Text + "' and userspw='" + Password.Text + "'", con);
                con.Open();

                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {

                    if (chkDontForget.Checked)
                    {

                        Response.Cookies["usersname"].Value = UserName.Text;
                        Response.Cookies["userspw"].Value = Password.Text;

                        Response.Cookies["usersname"].Expires = DateTime.Now.AddDays(5);
                        Response.Cookies["userspw"].Value = Password.Text;


                    }
                    else
                    {
                        Response.Cookies["usersname"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["userspw"].Expires = DateTime.Now.AddDays(-1);
                    }


                    string Type;
                    Type = dt.Rows[0][5].ToString().Trim();
                    if (Type == "3")
                    {

                        Session["username"] = UserName.Text;


                        Response.Redirect("~/Home.aspx");
                        UserName.Text = string.Empty;
                    }

                    if (Type == "1")
                    {
                        Session["username"] = UserName.Text;


                        Response.Redirect("~/AdminSection.aspx");
                        UserName.Text = string.Empty;
                    }

                    if (Type == "2")
                    {
                        Session["username"] = UserName.Text;

                        Response.Redirect("~/ReviewerSection.aspx");
                        UserName.Text = string.Empty;
                    }
                }
                else
                {
                    lblError.Text = "Invalid Username or Password !";
                }
            }


        }
    }
}