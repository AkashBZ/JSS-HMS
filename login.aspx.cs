using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_button_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection("server=AKASH-PC\\SA; initial catalog=jsshms; user=sa; password=sa123;");
            con.Open();
            string query = "select * from details where email= '" + email.Text + "'  and password= '" + password.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader r = cmd.ExecuteReader();
            r.Read();
            if (r.HasRows)
            {
                Session["name"] = r.GetString(0);
                Session["email"] = r.GetString(1);
                Session["phone"] = r.GetString(2);
                Session["uni_roll"] = r.GetString(3);
                Session["admission_num"] = r.GetString(4);
                Session["year"] = r.GetString(5);
                Session["backs"] = r.GetString(6);
                Session["prev_room"] = r.GetString(8);
                
                if (r.IsDBNull(9))
                    Response.Redirect("uploadResult.aspx?hasUploadedResult=false");
                else
                    Response.Redirect("uploadResult.aspx?hasUploadedResult=true");

            }
            else { Response.Write("<script language=javascript>alert('Email password combination is incorrect!');</script>");
            
            }
        }
        catch
        {
            Response.Write("<script language=javascript>alert('Error connecting to the database. Try Again later!');</script>");
        }
    }
    protected void redirect_button_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}