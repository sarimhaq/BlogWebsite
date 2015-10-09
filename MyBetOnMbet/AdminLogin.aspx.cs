using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBetOnMbet
{
    public partial class Adminz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMsg.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(txtEmail.Text=="sarimhaq@gmail.com"&&txtPassword.Text=="mybetonmbet")
            {
                Session["Confirmed"] = "true";
                Response.Redirect("AdminNav.aspx");
            }
            else
            {
                lblErrorMsg.Text = "Fuck you, get the fuck out of my website!";
                lblErrorMsg.Visible = true;
            }
        }
    }
}