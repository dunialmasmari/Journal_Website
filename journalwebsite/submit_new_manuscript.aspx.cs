using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace journalwebsite
{

    public partial class submit_new_manuscript : System.Web.UI.Page
    {
        string s;
        int b;

        protected void Page_Load(object sender, EventArgs e)
        {
            SDSfiles.SelectParameters["menuno"].DefaultValue =  Label5.Text;//b.ToString();
            SDSAuthor.SelectParameters["menuscriptno"].DefaultValue = Label5.Text;//b.ToString();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
     //    string path="/files/myfile."+ Path
        }

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e )
        {
            if (Wizard1.ActiveStepIndex==0)
            {

                SDSMenuscript.Insert();
                DataView randomCategoryView =
                       (DataView)SDSMenuscript.Select(DataSourceSelectArguments.Empty);
                if (randomCategoryView.Count > 0)
                {

                    b = Convert.ToInt32(randomCategoryView[0]["menuscriptid"]);
                    Label5.Text = b.ToString();
                    //  Label5.Visible = false;
                }
            
            


              //  Wizard1.ActiveStepIndex= 1;
            }
            if (Wizard1.ActiveStepIndex == 1)
            {
               
               
                
                Wizard1.ActiveStepIndex = 2;
             // string path="/files/myfile."+ Path
             //   Wizard1.ActiveStepIndex = 2;
            }
        }
        public string getString(int size)
        {
            string str = DateTime.Now.ToString().Replace("/", "").Replace(":", "").Replace(" ", "");
            str = str.Substring(0, str.Length - 2);
            return str;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
            SDSfiles.InsertParameters["menuscriptno"].DefaultValue = Label5.Text;//b.ToString();
            if (FileUpload1.HasFile == false)
            {
                // No file uploaded!
                details.Text = "Please first select a file to upload...";

            }
            else if (FileUpload1.HasFile == true)
            {
                // Display the uploaded file's details
              /*  details.Text = string.Format(
                @"Uploaded file: {0}<br />
                    File size (in bytes): {1:N0}<br />
                    Content-type: {2}",
                FileUpload1.FileName,
                FileUpload1.FileBytes.Length,
                FileUpload1.PostedFile.ContentType);
                */
                // Save the file
                string filePath =
                Server.MapPath("~/files/" + FileUpload1.FileName);
                FileUpload1.SaveAs(filePath);
                SDSfiles.InsertParameters["name"].DefaultValue = "~/files/" + FileUpload1.FileName;


                SDSfiles.Insert();
               
            }
               
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
         
          
        }

        protected void Addauthor_Click(object sender, EventArgs e)
        {
            SDSAuthor.InsertParameters["menuscriptno"].DefaultValue = Label5.Text;
            SDSAuthor.Insert();
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

            Response.Redirect("~/SubmittedArticals.aspx");
        }
    }
}