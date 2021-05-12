<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AssShow.aspx.cs" Inherits="AssShow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
.button {
     border-style: none;
         border-color: inherit;
         border-width: medium;
         background-color: #4CAF50;
         color: white;
         padding: 15px 32px;
         text-align: center;
         text-decoration: none;
         display: inline-block;
         font-size: 16px;
  margin: 4px 2px 4px 0px;
         cursor: pointer;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
    <ul>
  
  <li><a href="SignInST.aspx">Logout</a></li>
  

  <li><a href="#about">About</a></li>
  
  <!-- <input type="text" name="search" placeholder="Search..">-->
</ul>
    </div>
    <div>
    </div>
    <h1> &nbsp;</h1>
        <h1> Welcome</h1>
        <h1> 
    <asp:Button ID="Button1" runat="server" Height="68px" class="button" onclick="Button1_Click" 
            Text="Show ALL Notes/Assignment" Width="316px" />
        </h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            onrowcommand="GridView1_RowCommand" Width="1463px" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            GridLines="Horizontal" Height="269px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:TemplateField HeaderText="File">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            CommandArgument='<%# Eval("File") %>' CommandName="Download" 
                            Text='<%# Eval("File") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Size" HeaderText="Size in Bytes" />
                <asp:BoundField DataField="Type" HeaderText="File Type " />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        
        
    </div>
    <p>
      </p>
      <<footer style="width:100%; height:140px;  margin-top:120px; background-color:Black;"><br><br />
    <h1 style="color:White;  text-align:center;">Copyright © Student Corner. All rights reserved. </h1>
    </footer>
    </form>
    </form>
</body>
</html>
