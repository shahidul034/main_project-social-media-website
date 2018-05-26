<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Timeline.aspx.cs" Inherits="Timeline" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="centercontrol.css">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            height: 23px;
        }
        .auto-style3
        {
            height: 23px;
            width: 417px;
        }
        .auto-style4
        {
            width: 417px;
        }
        .auto-style5
        {
            height: 23px;
            width: 350px;
        }
        .auto-style6
        {
            width: 350px;
        }
    </style>
</head>
<body runat="server" style="background-image:url(back.jpg)">
    <form id="form1" runat="server" >
        <header>
		<div class="T">
			<h1><img src="icon.ico" style="height: 90px"> We Talk</h1>
		</div>
	</header>
    <h1 id="H"  runat="server" style="font-size: 100px; font-weight: bold; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-style: italic; color: #000000; background-color: #009999; border-style: solid; text-transform: capitalize; float: inherit;">
        
        </h1>
       
        

        <div id="page">
        <asp:HyperLink ID="message" runat="server" BackColor="Black" BorderColor="#996633" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="White" Height="40px" NavigateUrl="~/Message.aspx" Width="93px">Message</asp:HyperLink>&nbsp;&nbsp;&nbsp;
         <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Black" BorderColor="#996600" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="White" Height="40px" NavigateUrl="~/newsfeed.aspx" Width="93px">Newsfeed</asp:HyperLink>&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" BackColor="Black" BorderColor="#996633" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="White" Height="40px" NavigateUrl="~/friends.aspx" Width="93px">Friends</asp:HyperLink>  
            <br />
            <br />
       </div> 
         <div id="page">
            <asp:Image ID="Image1" runat="server" Height="300px" Width="400px" />
            <br />
            <br />
            </div>
       
        <br />
        <br />
        <table id="page">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" BackColor="#009999" Font-Size="XX-Large" ForeColor="Maroon" Height="35px" Text="Name" Width="200px" BorderStyle="Ridge"></asp:Label>
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" BackColor="Black" BorderColor="#996600" BorderStyle="Solid" ForeColor="White" Height="49px" Width="409px" Font-Size="X-Large"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox8" runat="server" Height="49px" Width="166px" Font-Size="X-Large" placeholder="Enter first name" BorderColor="#996600" BorderStyle="Ridge" BackColor="Silver"></asp:TextBox>
                    <asp:TextBox ID="TextBox11" runat="server" Height="49px" Width="167px" Font-Size="X-Large" placeholder="Enter last name" BorderColor="#996600" BorderStyle="Ridge" BackColor="Silver"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button6" runat="server" Height="49px" Text="Update" Width="94px" OnClick="Button6_Click" BackColor="Black" BorderColor="#996633" BorderStyle="Ridge" Font-Size="X-Large" ForeColor="White" />
                </td>
                <td align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label14" runat="server" BackColor="#009999" Font-Size="XX-Large" ForeColor="Maroon" Height="35px" Text="Email" Width="200px" BorderStyle="Ridge"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label11" runat="server" BackColor="Black" BorderColor="#996600" BorderStyle="Solid" ForeColor="White" Height="49px" Width="409px" Font-Size="X-Large"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox12" runat="server" Height="49px" Width="342px" Font-Size="X-Large" placeholder="Enter Email" BorderColor="#996600" BorderStyle="Ridge" BackColor="Silver"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button7" runat="server" Height="49px" Text="Update" Width="94px" OnClick="Button7_Click" BackColor="Black" BorderColor="#996633" BorderStyle="Ridge" Font-Size="X-Large" ForeColor="White" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label15" runat="server" BackColor="#009999" Font-Size="XX-Large" ForeColor="Maroon" Height="35px" Text="Address" Width="200px" BorderStyle="Ridge"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label12" runat="server" BackColor="Black" BorderColor="#996600" BorderStyle="Solid" ForeColor="White" Height="49px" Width="409px" Font-Size="X-Large"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox13" runat="server" Height="49px" Width="342px" Font-Size="X-Large" placeholder="Enter Address" BorderColor="#996600" BorderStyle="Ridge" BackColor="Silver"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button8" runat="server" Height="49px" Text="Update" Width="94px" OnClick="Button8_Click" BackColor="Black" BorderColor="#996633" BorderStyle="Ridge" Font-Size="X-Large" ForeColor="White" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label16" runat="server" BackColor="#009999" Font-Size="XX-Large" ForeColor="Maroon" Height="35px" Text="Gender" Width="200px" BorderStyle="Ridge"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label13" runat="server" BackColor="Black" BorderColor="#996600" BorderStyle="Solid" ForeColor="White" Height="49px" Width="409px" Font-Size="X-Large"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox14" runat="server" Height="49px" Width="342px" placeholder="Enter Gender" BorderColor="#996600" BorderStyle="Ridge" Font-Size="X-Large" BackColor="Silver"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button9" runat="server" Height="49px" Text="Update" Width="94px" OnClick="Button9_Click" BackColor="Black" BorderColor="#996633" BorderStyle="Ridge" Font-Size="X-Large" ForeColor="White" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        
       
        <br />
        <br />
        <br />
        <div id="page">
        <asp:GridView ID="GridView1" HorizontalAlign="Center" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Width="1095px" Height="374px" Font-Size="X-Large">
            <Columns>
                <asp:TemplateField HeaderText="post_name" SortExpression="post_name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("post_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("post_name") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="post_text" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="post_details" SortExpression="post_details">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("post_details") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("post_details") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>

                        <asp:TextBox ID="details_text" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView></div>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:postConnectionString %>" SelectCommand="SELECT [post_name], [post_details] FROM [post_store] WHERE ([username] = @username)">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div id="page">
        <table class="auto-style1">
            <tr>
                <td> 
                    <asp:TextBox ID="TextBox18" runat="server"  Height="32px" Width="268px" placeholder="Enter post name" Font-Size="X-Large" BorderColor="#996600" BorderStyle="Ridge" BackColor="Silver"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox16" runat="server" Height="190px" Width="401px" placeholder="Enter post details" Font-Size="X-Large" BorderColor="#996600" BorderStyle="Ridge" BackColor="Silver" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button10" runat="server" Height="42px" Text="Insert" Width="122px" BackColor="Black" BorderStyle="Ridge" Font-Size="X-Large" ForeColor="White" OnClick="Button10_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox17" runat="server" Height="32px" Width="268px" placeholder="Enter post name for deleting" Font-Size="X-Large" BorderColor="#996600" BorderStyle="Ridge" BackColor="Silver"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button14" runat="server" Height="42px" Text="Delete" Width="122px" BackColor="Black" BorderStyle="Ridge" Font-Size="X-Large" ForeColor="White" OnClick="Button14_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button15" runat="server" Height="42px" Text="Logout" Width="122px" BackColor="Maroon" BorderStyle="Ridge" Font-Size="X-Large" ForeColor="White" OnClick="Button15_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table> </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br/>
    </form>
</body>
</html>
