using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBetOnMbet
{
    public partial class SearchResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["id"]!= null)
            { 
            if (!IsPostBack) { 
            string check = Request.QueryString["id"].ToString();
            DataTable checkdate = CSCodeClass.BlogArchieve.SearchResults(check);
            DataList1.DataSource = checkdate;
            Label1.Text = Request.QueryString["id"].ToString();
            DataList1.DataBind();
            if(checkdate.Rows.Count == 0)
            {
                Label1.Text = "Sorry, nothing was found.";
            }
            }
            }
            else
            {
                Response.Redirect("Index.aspx");
            }

        }
    }
}