<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SourcePage.aspx.cs" Inherits="SourcePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Transfer Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Source Page</h1>
        Message to send: <asp:TextBox ID="txtMessage" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Text is required!" ControlToValidate="txtMessage"></asp:RequiredFieldValidator>
        <br />
        <asp:DropDownList ID="ddlMessages" runat="server" OnSelectedIndexChanged="ddlMessages_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList><br />
        <asp:Button ID="btnQuery" runat="server" Text="Query" OnClick="btnQuery_Click" /><br />
        <asp:Button ID="btnSession" runat="server" Text="Session" OnClick="btnSession_Click" /><br />
        <asp:Button ID="btnCookie" runat="server" Text="Cookie" OnClick="btnCookie_Click" /><br />
        <asp:Button ID="btnPublicProperty" runat="server" Text="Property" OnClick="btnPublicProperty_Click"/>
    </div>
    </form>
</body>
</html>
