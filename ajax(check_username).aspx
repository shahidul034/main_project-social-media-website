<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ajax(check_username).aspx.cs" Inherits="ajax_check_username_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <%
            string str = Request.QueryString["key"];
            if(function(str)==1)
                Response.Write("Already Exist");
            else
                Response.Write("Available");
    %>
    
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
