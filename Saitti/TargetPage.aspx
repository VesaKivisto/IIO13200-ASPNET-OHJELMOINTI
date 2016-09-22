<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TargetPage.aspx.cs" Inherits="TargetPage" %>
<%@ PreviousPageType VirtualPath="~/SourcePage.aspx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Transfer Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Target Page</h1>
        The message sent to this page is: <asp:Label ID="lblMessage" runat="server" /><br />
    </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="./SourcePage.aspx">Return</asp:HyperLink>
    </form>
</body>
</html>
