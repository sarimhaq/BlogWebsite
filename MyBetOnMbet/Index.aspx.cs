using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBetOnMbet
{
    public partial class Index : System.Web.UI.Page
    {
        public string iniImageoneSrc;
        public string ImageoneUrl;
        public string ImageoneSrc;
        public string iniImagetwoSrc;
        public string ImagetwoUrl;
        public string ImagetwoSrc;
        public string iniImagethreeSrc;
        public string ImagethreeUrl;
        public string ImagethreeSrc;



        

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
            DataTable table = CSCodeClass.getingslider.getslider();
            iniImageoneSrc = table.Rows[0][2].ToString();
            ImageoneSrc = iniImageoneSrc.Remove(0, 1);
            ImageoneUrl = table.Rows[0][1].ToString();
            iniImagetwoSrc = table.Rows[1][2].ToString();
            ImagetwoSrc = iniImagetwoSrc.Remove(0, 1);
            ImagetwoUrl = table.Rows[1][1].ToString();
            iniImagethreeSrc = table.Rows[2][2].ToString();
            ImagethreeSrc = iniImagethreeSrc.Remove(0, 1);
            ImagethreeUrl = table.Rows[2][1].ToString();
            DataList1.DataSource = CSCodeClass.BlogArchieve.RecentPosts();
            DataList1.DataBind();
            }

            

        }
    }
}