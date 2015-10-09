using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBetOnMbet
{
    public partial class BlogArchieve : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string check = Request.QueryString["id"].ToString();
            DataTable datacheck = CSCodeClass.BlogArchieve.MonthWiseArchieve(check);
            DataList1.DataSource = datacheck;
            Label1.Text = Request.QueryString["id"].ToString();
            DataList1.DataBind();
           
        }
    }
}