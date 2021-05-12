<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUpTS.aspx.cs" Inherits="SignUpTS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style type="text/css">
        body {margin:0;}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
  position: fixed;
  top: 0;
  width: 100%;
}

li {
  float: left;
}

li a {
 display: block;
  color: white;
  text-align: center;
  padding: 18px 22px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}
li .a input[type=text] {
  float: right;
  padding: 6px;
  border: none;
  margin-top: 8px;
  margin-right: 16px;
  font-size: 17px;
}
    body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: white;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <ul>
  <li><a class="active" href="index.aspx">Home</a></li>
  <li><a href="Sign_Up.aspx">Sign Up</a></li>
  <li><a href="Sign_In.aspx">Sign In</a></li>
  <!-- <input type="text" name="search" placeholder="Search..">-->
</ul>
    </div>
    <div class="container">
    <h1 style="margin-top:75px;"> Teachers Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
      <label for="name"><b>Name</b></label>
        <asp:TextBox ID="txtname"  placeholder="Full Name" runat="server"></asp:TextBox>
    

     <label for=""><b>Email</b></label>
     <asp:TextBox ID="txtemail" placeholder="Enter Email" runat="server"></asp:TextBox>

    <label for="Phone_no"><b>Phone No</b></label>
    <asp:TextBox ID="txtphoneno" placeholder="Phone No" runat="server"></asp:TextBox>

    <label for="psw"><b>Password</b></label>
    <asp:TextBox ID="txtpassword"  placeholder="Enter Password" runat="server"></asp:TextBox>
    

    <!--<label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>
    <hr>-->
    <p>By creating an account you agree to our Terms & Privacy</p>
        <asp:Button ID="btnSumbit" class="registerbtn" runat="server" Text="Sumbit" 
            onclick="btnSumbit_Click" />
    
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="Sign_In.aspx">Sign in</a>.</p>
  </div>
</form>
    </div>
    </form>
</body>
</html>

