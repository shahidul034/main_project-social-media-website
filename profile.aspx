<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>WE TALK</title>

<link href="default.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body runat="server">
<div id="header-wrapper">
	<div id="header" runat="server">
		<div id="logo" runat="server">
			<h1><a href="#" runat="server" id="TextBox1"></a></h1>
		</div>
		<div id="menu" runat="server">	
		</div>
	</div>
</div>
<div id="banner">
	<div class="img-border"> <a href="#"><img src="images/header-img.jpg" width="1120" height="500" alt="" /></a> </div>
</div>

	
				<div>
					<h1>Welcome to your profile</h1>	
				</div>
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label> <h1  runat="server" id="text1" ><b></b></h1></div>
                <div><asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label> <h1  runat="server" id="H1" ><b></b></h1></div>
                <div><asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label> <h1  runat="server" id="H2" ><b></b></h1></div>
                <div><asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label> <h1  runat="server" id="H3" ><b></b></h1></div>
	
<div id="footer" class="container" runat="server">
	<p>Copyright (c) 2018 wetalk.com. All rights reserved. Design by shakib</p>
</div>
</body>
</html>
