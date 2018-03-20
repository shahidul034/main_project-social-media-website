<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!doctype html>
<html>
	<head>
		<script src="javascript_file.js"></script>
		<meta charset="utf-8">
		<title>Sign Up</title>
		<link rel="stylesheet" href="signup.css">
	</head>
	<body>
	<p id="date"></p>
   <p id="time"></p>

		<div class="loginBox">
			<img src="user.png" class="user">
			<h2>Sign Up Here</h2>
			<form id="form1" runat="server">
				<p>username</p>
				<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
				<p>Password</p>
				<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
				<p>Firstname</p>
				<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
				<p>Lastname</p><asp:TextBox ID="TextBox4" runat="server" Height="22px"></asp:TextBox>
                <p>Email</p>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <p>Address</p>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
               <p>Gender</p>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Signup" />
				<a href="#">Forget Password</a><br />
                <a href="Homepage.aspx">Already have a account! sign in</a>
			</form>
		</div>
		
		
	</body>

</html>
