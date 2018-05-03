<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newsfeed.aspx.cs" Inherits="newsfeed" %>

<!DOCTYPE html html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="centercontrol.css">
</head>
<body style="font-family: Cambria; font-size: large; background-color: #808080; background-image: url('back.jpg')">
    <form id="form1" runat="server">
        <header>
		<div>
			<h1><img src="icon.ico" style="height: 90px"> We Talk</h1>
		</div>
	</header>
        <div id="page" style="font-style: italic">
            <asp:Label ID="Label1" runat="server" Text="Newsfeed" Font-Size="XX-Large"></asp:Label>
            </div>

        <div id="page">

            <asp:GridView ID="GridView1" BackImageUrl="~/img/sea.jpg" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" Height="534px" Style="margin-bottom: 290px" Width="1105px" Font-Size="X-Large">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="post_name" HeaderText="post_name" SortExpression="post_name" />
                    <asp:BoundField DataField="post_details" HeaderText="post_details" SortExpression="post_details" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:postConnectionString %>" SelectCommand="SELECT [username], [post_name], [post_details] FROM [post_store]"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
