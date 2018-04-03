<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Timeline.aspx.cs" Inherits="Timeline" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body runat="server" style="background-image:url(back.jpg)">
    <form id="form1" runat="server">
    <h1 id="H"  runat="server" style="font-size: 100px; font-weight: bold; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-style: italic; color: #000000; background-color: #009999; border-style: solid; text-transform: capitalize; float: inherit;">
        
        </h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="message" runat="server" BackColor="Gray" BorderColor="#996600" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#990000" Height="25px" NavigateUrl="~/Message.aspx" Width="76px">Message</asp:HyperLink>
        <h1>Name:</h1>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="H1" runat="server" BackColor="#006666" BorderStyle="Solid" ForeColor="#333333" Text="Name" BorderColor="Gray" BorderWidth="10px" Font-Size="X-Large" Width="432px"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="29px" style="margin-top: 0px">First name</asp:TextBox>
        &nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Height="29px">Last name</asp:TextBox>
        <asp:Button ID="update" runat="server" OnClick="Button2_Click" Text="Update" />
        <br />
        <br/>
        <h1>Email:</h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="H2" runat="server" BackColor="#006666" BorderStyle="Solid" ForeColor="#333333" Text="Email" BorderColor="Gray" BorderWidth="10px" Font-Size="X-Large" Width="432px"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="29px">Email</asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button3_Click" Text="Update" />
        <br />
        <br/>
        <h1>Address:</h1>&nbsp; <asp:Label ID="H3" runat="server" BackColor="#006666" BorderStyle="Solid" ForeColor="#333333" Text="Address" BorderColor="Gray" BorderWidth="10px" Font-Size="X-Large" Width="432px"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="29px">Address</asp:TextBox>
&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button4_Click1" />
        <br />
        <br/>
        <h1>Gender:</h1>&nbsp;&nbsp; <asp:Label ID="H4" runat="server" BackColor="#006666" BorderStyle="Solid" ForeColor="#333333" Text="Gender" BorderColor="Gray" BorderWidth="10px" Font-Size="X-Large" Width="432px"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Height="29px">Gender</asp:TextBox>
&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button5_Click1" />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" ShowFooter="True" Width="929px">
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
        </asp:GridView>
        <asp:LinkButton ID="insert" runat="server" OnClick="lbInsert_Click" BackColor="White" BorderColor="#996600" BorderStyle="Solid" ForeColor="Black" Height="24px" Width="100px">Insert</asp:LinkButton>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:postConnectionString %>" SelectCommand="SELECT [post_name], [post_details] FROM [post_store] WHERE ([username] = @username)">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:TextBox ID="TextBox6" runat="server" Height="34px" Width="154px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="delete_button" Text="Delete" />
        <br />
        <br />
        <br />
        <br/>
    </form>
</body>
</html>
