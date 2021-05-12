using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sign_In : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnStudentLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignInST.aspx");
    }
    protected void btnTeacherLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignInTS.aspx");
    }
}