using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBetOnMbet
{
    public partial class AdminNav : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Confirmed"] == null)
            {
                if(!IsPostBack)
                { 
                Response.Redirect("AdminLogin.aspx");
                }
            }
        }

        protected void btnBlogList_Click(object sender, EventArgs e)
        {
            Response.Redirect("BlogList.aspx");
        }

        protected void btnBlogEntry_Click(object sender, EventArgs e)
        {
            Response.Redirect("BlogEntry.aspx");
        }

        protected void btnCoverPicUpload_Click(object sender, EventArgs e)
        {
            Response.Redirect("SliderPicUpload.aspx");
        }

        protected void AllComments_Click(object sender, EventArgs e)
        {
            Response.Redirect("commentslist.aspx");
        }

        protected void AllDirtyBlogs_Click(object sender, EventArgs e)
        {
            Response.Redirect("DirtyBlogList.aspx");
        }

        protected void btnCoverPicList_Click(object sender, EventArgs e)
        {
            Response.Redirect("coverpiclist.aspx");
        }

    }
}