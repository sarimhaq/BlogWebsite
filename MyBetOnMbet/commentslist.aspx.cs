﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBetOnMbet
{
    public partial class commentslist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Confirmed"] == null)
            {
                if (!IsPostBack)
                {
                    Response.Redirect("AdminLogin.aspx");
                }
            }
        }
    }
}