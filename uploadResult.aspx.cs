using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class uploadResult : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=AKASH-PC\\SA; initial catalog=jsshms; user=sa; password=sa123;");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            name.Text = "Welcome " + Session["name"].ToString() + ". You have successfully registered! Time to upload your result. ";
            email.Text = Session["email"].ToString();
            phone.Text = Session["phone"].ToString();
            uni_roll.Text = Session["uni_roll"].ToString();
            admission_num.Text = Session["admission_num"].ToString();
            year.Text = Session["year"].ToString();
            backs.Text = Session["backs"].ToString();
            prev_room.Text = Session["prev_room"].ToString();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void not_now_Click(object sender, EventArgs e)
    {
        Session["name"] = null;
        Session["email"] = null;
        Session["phone"] = null;
        Session["uni_roll"] = null;
        Session["admission_num"] = null;
        Response.Redirect("Default.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (resultUploader.PostedFile.ContentType == "application/pdf")
        {
            string filename = Path.GetFileName(resultUploader.FileName);
            resultUploader.SaveAs(Server.MapPath("result/") + Session["uni_roll"] + filename);

            con.Open();
            string qry = "update details set result='" +Session["uni_roll"]+ filename + "' where name='" + Session["name"] + "'";
            
            SqlCommand cmd = new SqlCommand(qry, con);
            
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script type='text/javascript'>alert('Result was successfully uploaded! Thank you for registering!');</script>");
            Response.Redirect("Default.aspx");
            
        }
    }
}