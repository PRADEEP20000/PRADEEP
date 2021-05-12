<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assupload.aspx.cs" Inherits="Assupload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
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
    table {  
        font-family: arial, sans-serif;  
        border-collapse: collapse;  
        width: 100%;  
    }  
  
    td, th {  
        border: 1px solid #dddddd;  
        text-align: left;  
        padding: 8px;  
    }  
  
    tr:nth-child(even) {  
        background-color: #dddddd;  
    }  
  
    .button {  
        background-color: #4CAF50;  
        border: none;  
        color: white;  
        padding: 15px 32px;  
        text-align: center;  
        text-decoration: none;  
        display: inline-block;  
        font-size: 16px;  
        margin: 4px 2px;  
        cursor: pointer;  
    }  
  
    .button4 {  
        border-radius: 9px;  
    }  
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <ul>
  
  <li><a href="SignInTS.aspx">Logout</a></li>
  

  <li><a href="#about">About</a></li>
  
  <!-- <input type="text" name="search" placeholder="Search..">-->
</ul>
    </div>
  <div>

  <h1> Welcome </h1>
  <h2> Upload your File </h2>
  <div>
  <img src="img/note-taking-1400x1050.png" style="height:200px; width:250px;" />
  </div>
  <div>
        <asp:FileUpload ID="FileUpload1" runat="server" 
          style="margin-top: 0px; margin-bottom: 15px" />
        <asp:Button ID="btnSubit" runat="server" class="button button4" Text="Submit" 
            onclick="btnSubit_Click" Width="197px" />
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            onrowcommand="GridView1_RowCommand1" >
            <Columns>
                <asp:TemplateField HeaderText="File">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            CommandArgument='<%# Eval("FIle") %>' CommandName="Download" 
                            Text='<%# Eval("File") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Size" HeaderText="Size in Bytes" />
                <asp:BoundField DataField="Type" HeaderText="FIle Type" />
            </Columns>
        </asp:GridView>
    </form>
    <p>
  </p>
  </div>
  <<footer style="width:100%; height:140px;  margin-top:80px; background-color:Black;"><br><br />
    <h1 style="color:White;  text-align:center;">Copyright © Student Corner. All rights reserved. </h1>
    </footer>
    </form>
</body>
</html>
