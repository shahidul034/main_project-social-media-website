<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sucess.aspx.cs" Inherits="sucess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="hi !!!!"></asp:Label> 
        &nbsp;you sucessfully login<br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="logout" OnClick="Button1_Click1" />
    </div>
    </form>
</body>
</html>
