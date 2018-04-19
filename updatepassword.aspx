<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updatepassword.aspx.cs" Inherits="updatepassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('back.jpg')">
    <div><header>
		<div class="T">
			<h1><img src="icon.ico" style="height: 90px"> We Talk</h1>
		</div>
	</header></div>
    <form id="form1" runat="server">
        <div>
            Enter your username:<br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="227px"></asp:TextBox>
        </div>
        <p>
            Enter your Email address:</p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="227px"></asp:TextBox>
        </p>
        <p>
            Enter details about your id</p>
        <p>
            <asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="227px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Height="34px" OnClick="Button1_Click" Text="Send request" Width="95px" />
        </p>
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
