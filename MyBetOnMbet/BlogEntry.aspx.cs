using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBetOnMbet
{
    public partial class BlogEntry : System.Web.UI.Page
    {
        DateTime current = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
        
            if (!IsPostBack)
            {
                if (Session["Confirmed"] == null)
                    Response.Redirect("AdminLogin.aspx");
               

            }

            ErrorLabel.Text = null;

        }

        
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFiles)
            {
                Image1.ImageUrl = "~/Images/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + FileUpload1.FileName);
            }
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if(txtBlogEntry.Text!=null && txtHeading.Text!=null && txtMonth.Text!=null)
            {

                int result = CSCodeClass.BlogEntryClass.PostBlock(txtHeading.Text, txtBlogEntry.Text, txtMonth.Text, current, Image1.ImageUrl);
                if(result==1)
                {
                    ErrorLabel.Text = "Successfully Posted!";
                }
                else
                {
                    ErrorLabel.Text = "Something went wrong :(";
                }

            }
            else
            {
                ErrorLabel.Text = "Some info missing";
            }
        }
    }
}