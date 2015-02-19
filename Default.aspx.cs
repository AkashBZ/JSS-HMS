using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void submitButton_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection("server=AKASH-PC\\SA; initial catalog=jsshms; user=sa; password=sa123;");
            con.Open();
            string qry = "insert into details(name,email,phone,uni_roll,admission_num,year,backs,percentage,previous_room,password) values('" + name.Text + "','" + email.Text + "','" + phone.Text + "','" + uni_roll.Text + "','" + admission_num.Text + "','" + DropDownList2.SelectedItem + "','" + DropDownList1.SelectedItem + "','" + percentage.Text + "','" + prev_room.Text + "','"+password.Text+"')";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
            con.Close();
            
            Session["name"] = name.Text;
            Session["email"] = email.Text;
            Session["phone"] = phone.Text;
            Session["uni_roll"] = uni_roll.Text;
            Session["admission_num"] = admission_num.Text;
            Session["year"] = DropDownList2.SelectedItem;
            Session["backs"] = DropDownList1.SelectedItem;
            Session["prev_room"] = prev_room.Text;
            Response.Write("<script type='text/javascript'>alert('You have successfully registered!');</script>");
            Response.Redirect("uploadResult.aspx?hasUploadedResult=false");
        }
        catch {
            Response.Write("<script type='text/javascript'>alert('There was some error connecting to the database. Please try again later!');</script>");
        }
            
    }
}