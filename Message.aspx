<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="Message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="stylesheet" type="text/css" href="Homepage.css">
    <title></title>
</head>
<body style="background-image: url('back.jpg'); background-attachment: scroll; border-style: solid">
    <form id="form1" runat="server">
        <header>
		<div class="T">
			<h1><img src="icon.ico" style="height: 90px"> We Talk</h1>
		</div>
	</header>
   <div>
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Receiver" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" ShowFooter="True" Height="277px" Width="922px" >
           <AlternatingRowStyle BackColor="PaleGoldenrod" />
           <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
               <asp:TemplateField HeaderText="Sender" SortExpression="Sender">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Sender") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label1" runat="server" Text='<%# Bind("Sender") %>'></asp:Label>
                   </ItemTemplate>
                   <FooterTemplate>
                       <asp:LinkButton ID="LinkButton1" runat="server" OnClick="button_click">Sent</asp:LinkButton>
                    
                   </FooterTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Receiver" SortExpression="Receiver">
                   <EditItemTemplate>
                       <asp:Label ID="Label1" runat="server" Text='<%# Eval("Receiver") %>'></asp:Label>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label2" runat="server" Text='<%# Bind("Receiver") %>'></asp:Label>
                   </ItemTemplate>

                   <FooterTemplate>

                       <asp:TextBox ID="receiver" runat="server"></asp:TextBox>
                   </FooterTemplate>

               </asp:TemplateField>
               <asp:TemplateField HeaderText="msg" SortExpression="msg">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("msg") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label3" runat="server" Text='<%# Bind("msg") %>'></asp:Label>
                   </ItemTemplate>
                   <FooterTemplate>
                       <asp:TextBox ID="msg2" runat="server"></asp:TextBox>
                   </FooterTemplate>
               </asp:TemplateField>
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
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:postConnectionString %>" DeleteCommand="DELETE FROM [message_store] WHERE [Receiver] = @Receiver" InsertCommand="INSERT INTO [message_store] ([Sender], [Receiver], [msg]) VALUES (@Sender, @Receiver, @msg)" SelectCommand="SELECT * FROM [message_store] WHERE ([Receiver] = @Receiver)" UpdateCommand="UPDATE [message_store] SET [Sender] = @Sender, [msg] = @msg WHERE [Receiver] = @Receiver">
           <DeleteParameters>
               <asp:Parameter Name="Receiver" Type="String" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="Sender" Type="String" />
               <asp:Parameter Name="Receiver" Type="String" />
               <asp:Parameter Name="msg" Type="String" />
           </InsertParameters>
           <SelectParameters>
               <asp:SessionParameter Name="Receiver" SessionField="username" Type="String" />
           </SelectParameters>
           <UpdateParameters>
               <asp:Parameter Name="Sender" Type="String" />
               <asp:Parameter Name="msg" Type="String" />
               <asp:Parameter Name="Receiver" Type="String" />
           </UpdateParameters>
       </asp:SqlDataSource>
</div>
    </form>
</body>
</html>
