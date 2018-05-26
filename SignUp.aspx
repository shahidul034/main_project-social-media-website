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
        <header>
		<div style="color: #FFFFFF; background-color: #000000">
			<h1><img src="icon.ico" style="height: 90px"><asp:Label ID="Label1" runat="server" Text="We Talk"></asp:Label>    
            </h1>
		</div>
              <div>
               &nbsp; <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Main_Homepage.aspx" BackColor="Black" BorderStyle="Groove" BorderColor="Black" ForeColor="White" Height="40px" Width="133px" Font-Size="X-Large" Font-Italic="True" Font-Bold="True">Homepage</asp:HyperLink>
            </div>
	</header>
	<p id="date"></p>
   <p id="time"></p>

		<div class="loginBox">
			<img src="user.png" class="user">
			<h2>Sign Up Here</h2>
			<form id="form1" runat="server">
				<p>username</p>
				<asp:TextBox ID="TextBox1" runat="server" onkeyup="check_username(this.value)"></asp:TextBox>
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
                 <div>  
            <asp:DropDownList ID="DropDownList1" runat="server" >  
            <asp:ListItem Value="">Please Select</asp:ListItem>  
            <asp:ListItem>Male</asp:ListItem>  
            <asp:ListItem>Female</asp:ListItem>  
        </asp:DropDownList>  
        </div>  
                <div>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                 </div>
                <br />
                <br />


        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Signup" />
				<a href="#">Forget Password</a><br />
                <a href="Homepage.aspx">Already have a account! sign in</a>
			</form>
		</div>
		
		
	    <p>
             <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="Red"></asp:Label><br>
            <asp:Label ID="show" runat="server" Font-Size="X-Large" ForeColor="Red"></asp:Label>
        </p>
		
		
	</body>

</html>
