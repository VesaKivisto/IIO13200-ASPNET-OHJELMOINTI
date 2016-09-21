<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lotto.aspx.cs" Inherits="Lotto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Lotto</h1>
        <p>Select lotto type:</p>
        <asp:DropDownList ID="drpLottoType" runat="server">
            <asp:ListItem Value="Lotto">Lotto</asp:ListItem>
            <asp:ListItem Value="Viking Lotto">Viking Lotto</asp:ListItem>
        </asp:DropDownList><br />
        <p>Rows to draw:</p>
        <asp:TextBox ID="txtRows" runat="server" />
        <br /><br />
        <asp:Button ID="btnDraw" runat="server" Text="Draw lotto" OnClick="btnDraw_Click" />
        <br /><br />
        <asp:Label ID="lblMessages" runat="server" />
    </div>
    </form>
</body>
</html>
