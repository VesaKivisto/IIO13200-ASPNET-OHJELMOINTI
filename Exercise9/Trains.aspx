<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Trains.aspx.cs" Inherits="Trains" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="ddStations" AutoPostBack="true" runat="server" />
        <asp:Button ID="btnGetTrains" runat="server" Text="Get trains" OnClick="btnGetTrains_Click"/>
        <asp:GridView ID="gvTrains" runat="server"></asp:GridView>
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
