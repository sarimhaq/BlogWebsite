using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBetOnMbet
{
    public partial class readblog : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    commentname.Text = null;
                    commenttext.Text = null;
                    int BlogID = int.Parse(Request.QueryString["id"]);
                    id = int.Parse(Request.QueryString["id"]);
                    lblHead.Text = CSCodeClass.GetBlogByID.UpdateBlogContent.SingleBlogRetrival(BlogID).Rows[0][1].ToString();
                    BlogText.Text = CSCodeClass.GetBlogByID.UpdateBlogContent.SingleBlogRetrival(BlogID).Rows[0][5].ToString();
                    coverImage.ImageUrl = CSCodeClass.GetBlogByID.UpdateBlogContent.SingleBlogRetrival(BlogID).Rows[0][4].ToString();
                    DataTable checktable = new DataTable();
                    checktable = CSCodeClass.GetBlogByID.UpdateBlogContent.CommentRetrival(BlogID);
                    if (checktable.Rows.Count == 0)
                    {
                        CommentEn.Visible = true;
                        DataList1.Visible = false;

                    }
                    else
                    {
                        DataList1.DataSource = CSCodeClass.GetBlogByID.UpdateBlogContent.CommentRetrival(BlogID);
                        DataList1.DataBind();
                        DataList1.Visible = true;
                        CommentEn.Visible = false;
                    }



                }
                else
                    Response.Redirect("archievebymonth.aspx");
            }
            else
            {
               id = int.Parse(Request.QueryString["id"]);
               DataTable checktable = CSCodeClass.GetBlogByID.UpdateBlogContent.CommentRetrival(id);
                if (checktable.Rows.Count == 0)
                {
                    CommentEn.Visible = true;
                    DataList1.Visible = false;

                }
                else
                {
                    DataList1.DataSource = CSCodeClass.GetBlogByID.UpdateBlogContent.CommentRetrival(id);
                    DataList1.DataBind();
                    DataList1.Visible = true;
                    CommentEn.Visible = false;
                }
            }

        }

        protected void postitbutton_Click(object sender, EventArgs e)
        {
            if(commentname.Text != "" && commenttext.Text != "")
            { 
            int result = CSCodeClass.GetBlogByID.UpdateBlogContent.CommentEntry(commenttext.Text, id, commentname.Text);
            DataList1.DataSource = CSCodeClass.GetBlogByID.UpdateBlogContent.CommentRetrival(id);
            DataList1.DataBind();
            DataList1.Visible = true;
            CommentEn.Visible = false;
            UpdatePanel2.Update();
            UpdatePanel2.Visible = true;
          
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Your name and a comment is needed');", true);
            }
           
           
        }




    }
}
       
 
