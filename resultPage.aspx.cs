﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class resultPage : System.Web.UI.Page
{
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {
         s = Request.QueryString["result"];
         Response.Redirect("result/"+s);
        

    }
}