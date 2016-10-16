<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Finnkino.aspx.cs" Inherits="Finnkino" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListBox ID="lbTheatres" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lbTheatres_SelectedIndexChanged" Height="350"></asp:ListBox><br />
        <asp:Label ID="lblMessages" runat="server" style="display:inline-block;margin:20px 0;font-size:18px;"/>
        <div id="movieDiv" runat="server" style="width:1000px;"/>
        </div>
    </form>
</body>
</html>
