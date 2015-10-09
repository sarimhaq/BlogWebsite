using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBetOnMbet
{
    public partial class BlogEntryChange : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {

                    
                    int BlogID = int.Parse(Request.QueryString["id"]);
                    TextBox1.Text = CSCodeClass.GetBlogByID.UpdateBlogContent.SingleBlogRetrival(BlogID).Rows[0][5].ToString();
                    TextBox2.Text = CSCodeClass.GetBlogByID.UpdateBlogContent.SingleBlogRetrival(BlogID).Rows[0][1].ToString();
                }
                else
                    Response.Redirect("AdminLogin.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CSCodeClass.UpdateBlogContent.UpdateContent(int.Parse(Request.QueryString["id"]), TextBox1.Text);
            CSCodeClass.UpdateBlogContent.UpdateHeading(int.Parse(Request.QueryString["id"]), TextBox2.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            CSCodeClass.UpdateBlogContent.DeleteBlog(int.Parse(Request.QueryString["id"]));
  
        }
    }
}