using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SignUpTS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSumbit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Nehra\Documents\Visual Studio 2010\WebSites\Student_Corner\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        SqlCommand com = new SqlCommand("insert into tbSignUpTS values('" + txtname.Text + "','" + txtemail.Text + "','" + txtphoneno.Text + "','" + txtpassword.Text + "')", con);
        com.ExecuteNonQuery();
        con.Close();
        txtname.Text = "";
        txtemail.Text = "";
        txtpassword.Text = "";
        txtphoneno.Text = "";
    }
}