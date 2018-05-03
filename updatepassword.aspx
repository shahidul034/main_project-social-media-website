<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updatepassword.aspx.cs" Inherits="updatepassword" %>

<!DOCTYPE html html html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="centercontrol.css">
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            height: 48px;
        }
    </style>
</head>
<body style="background-image: url('back.jpg')">
    <form id="form1" runat="server">
        <header>
		<div>
			<h1><img src="icon.ico" style="height: 90px"> We Talk</h1>
		</div>
	</header>
        <div id="page" style="background-image: url('img/back2.jpg')">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" BackColor="Black" BorderColor="#996600" BorderStyle="Ridge" Font-Size="X-Large" ForeColor="White" Height="36px" Text="Enter your user id:" Width="336px"></asp:Label>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="53px" Width="368px" BackColor="#CCCCCC" BorderStyle="Ridge" Font-Italic="True" Font-Size="X-Large"></asp:TextBox>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" BackColor="Black" BorderColor="#996600" BorderStyle="Ridge" Font-Size="X-Large" ForeColor="White" Height="36px" Text="Enter your Email address:" Width="341px"></asp:Label>
                    <br />
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="53px" Width="368px" BackColor="#CCCCCC" BorderStyle="Ridge" Font-Italic="True" Font-Size="X-Large"></asp:TextBox>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" BackColor="Black" BorderColor="#996600" BorderStyle="Ridge" Font-Size="X-Large" ForeColor="White" Height="36px" Text="Enter your details:" Width="274px"></asp:Label>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="157px" Width="368px" BackColor="#CCCCCC" BorderStyle="Ridge" Font-Italic="True" Font-Size="X-Large" TextMode="MultiLine"></asp:TextBox>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="Black" BorderStyle="Ridge" Font-Size="X-Large" ForeColor="White" Height="36px" Text="Sent" Width="131px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table></div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
</body>
</html>
