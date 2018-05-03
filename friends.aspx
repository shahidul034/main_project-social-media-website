<%@ Page Language="C#" AutoEventWireup="true" CodeFile="friends.aspx.cs" Inherits="friends" %>

<!DOCTYPE html html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" type="text/css" href="centercontrol.css">
    <title></title>
</head>
<body style="background-image: url('back.jpg')">
    <div><header>
		<div>
			<h1><img src="icon.ico" style="height: 90px"> We Talk</h1>
		</div>
	</header></div>
    <form id="form1" runat="server">
        <div id="page">

            <asp:Label ID="Label1" runat="server" BackColor="Black" BorderColor="Silver" ForeColor="White" Text="Friend's list" Font-Size="XX-Large" BorderStyle="Ridge"></asp:Label>
            <br />

        </div>
        <div id="page">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="416px" Width="1108px" Font-Size="X-Large" BackImageUrl="~/img/back2.jpg" BorderStyle="Ridge">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView></div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContectConnectionString %>" SelectCommand="SELECT [username], [Firstname] FROM [sign_up]"></asp:SqlDataSource>
        <br />
        <div id="page"><asp:Label ID="Label2" runat="server" BackColor="Black" ForeColor="White" Text="Add new friend" Font-Size="XX-Large" BorderStyle="Ridge"></asp:Label></div>
        <br />
        <br />
        <div id="page">
        <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="350px" Font-Size="X-Large" placeholder="Enter friend's username" BackColor="Black" BorderColor="#996600" BorderStyle="Solid" ForeColor="White"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add friend" Font-Size="X-Large" Height="42px" BackColor="Maroon" BorderStyle="Ridge" />
        </div>
            <br />
        <br />
       <div id="page"><asp:Label ID="Label3" runat="server" Text="My friend's list" BackColor="Black" BorderStyle="Ridge" Font-Size="XX-Large" ForeColor="White"></asp:Label>
       </div>
            <br />
        <div id="page">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Myfriends" DataSourceID="SqlDataSource2" Font-Size="X-Large" ForeColor="#333333" Height="344px" Width="1060px" BackImageUrl="~/img/sea.jpg" BorderStyle="Ridge" RowHeaderColumn="Myfriends">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Myfriends" HeaderText="Myfriends" ReadOnly="True" SortExpression="Myfriends" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
            </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:postConnectionString %>" SelectCommand="SELECT [Myfriends] FROM [friends] WHERE ([myusername] = @myusername)">
            <SelectParameters>
                <asp:SessionParameter Name="myusername" SessionField="username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    </form>
</body>
</html>
