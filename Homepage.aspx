<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html>
<html>
<head>
	<title>We Talk</title>
	<script src="javascript_file.js"></script>
	<link rel="stylesheet" type="text/css" href="Homepage.css">
</head>
<body>
    
	<form id="form1" runat="server">
      
	<header>
		<div class="T">
			<h1><img src="icon.ico" style="height: 90px"> We Talk</h1>
		</div>
	</header>
        <div>
               &nbsp; <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Main_Homepage.aspx" BackColor="Black" BorderStyle="Groove" BorderColor="Black" ForeColor="White" Height="40px" Width="133px" Font-Size="X-Large" Font-Italic="True" Font-Bold="True">Homepage</asp:HyperLink>
            </div><br>
        <asp:Label ID="show" runat="server" Text=""></asp:Label>

       
	<p id="date"></p>
   <p id="time"></p>
         

	<div class="loginbox">
	<img src="avatar.png" class="avatar">
	<h1>Login Here</h1> 
			<p>Userame<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        </p>
			&nbsp; Password<br />
        <br />
       
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br>
         Remember me<asp:CheckBox ID="CheckBox1" runat="server" />
         <asp:Button ID="Button1" runat="server" Text="Sign in" OnClick="Button1_Click" />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/updatepassword.aspx">Forget Your Password</asp:HyperLink>
			
			<br />
        <br />
			
			<a href="SignUp.aspx">Create An Account</a><br><br>
			<p class="X">
				By clicking Create Account, you agree to our Terms and confirm that you have read our Data Policy, including our Cookie Use Policy. You may receive SMS message notifications from Facebook and can opt out at any time.
			</p>
		<br><br><br><br>

		
	</div>
       
        
    </form>
</body>
</html>
