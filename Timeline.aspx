<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Timeline.aspx.cs" Inherits="Timeline" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body runat="server" style="background-image:url(back.jpg)">
    <form id="form1" runat="server">
    <h1 id="H"  runat="server" style="font-size: 100px; font-weight: bold; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-style: italic; color: #000000; background-color: #009999; border-style: solid; text-transform: capitalize; float: inherit;"></h1>
        <h1>Name:</h1>&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="H1" runat="server" BackColor="#006666" BorderStyle="Solid" ForeColor="#333333" Text="Name" BorderColor="Gray" BorderWidth="10px" Font-Size="X-Large" Width="432px"></asp:Label>
        <br />
        <br/>
        <h1>Email:</h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="H2" runat="server" BackColor="#006666" BorderStyle="Solid" ForeColor="#333333" Text="Email" BorderColor="Gray" BorderWidth="10px" Font-Size="X-Large" Width="432px"></asp:Label>
        <br />
        <br/>
        <h1>Address:</h1>&nbsp; <asp:Label ID="H3" runat="server" BackColor="#006666" BorderStyle="Solid" ForeColor="#333333" Text="Address" BorderColor="Gray" BorderWidth="10px" Font-Size="X-Large" Width="432px"></asp:Label>
        <br />
        <br/>
        <h1>Gender:</h1>&nbsp;&nbsp; <asp:Label ID="H4" runat="server" BackColor="#006666" BorderStyle="Solid" ForeColor="#333333" Text="Gender" BorderColor="Gray" BorderWidth="10px" Font-Size="X-Large" Width="432px"></asp:Label>
        <br />
        <asp:Image ID="Image1" runat="server" Height="374px" Width="468px" />
        <br/>
    </form>
</body>
</html>
