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
            string query = "select * from details where email=" + email.Text + " and password=" + password.Text;
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader r = cmd.ExecuteReader();
            if (r.HasRows)
            {
                

            }
        }
        catch { }
    }
}