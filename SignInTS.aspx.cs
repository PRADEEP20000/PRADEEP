using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class SignInTS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
         SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Nehra\Documents\Visual Studio 2010\WebSites\Student_Corner\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
            string name = txtname.Text;  
            string password = txtpassword.Text;  
            SqlCommand cmd = new SqlCommand("select name,password from tbSignUpTS where name='" + txtname.Text + "'and password='" + txtpassword.Text + "'", con);  
            SqlDataAdapter da = new SqlDataAdapter(cmd);  
            DataTable dt = new DataTable();  
            da.Fill(dt);
            if (dt.Rows.Count > 0)  
            {  
                  Response.Redirect("Assupload.aspx");
            }  
            else  
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('User Name and Password is Wrong')</script>"); 
            }  
            con.Close();
            txtname.Text = "";
            txtpassword.Text = "";
        }   
    

    
}