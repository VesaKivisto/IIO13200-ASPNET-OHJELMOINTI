<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WindowPriceCalculator.aspx.cs" Inherits="WindowPriceCalculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="content">
        <asp:Label ID="lblWindowWidth" runat="server" Text="Window width (mm): "></asp:Label>
        <asp:TextBox ID="txtWindowWidth" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblWindowHeight" runat="server" Text="Window height (mm): "></asp:Label>
        <asp:TextBox ID="txtWindowHeight" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblFrameWidth" runat="server" Text="Frame width (mm): "></asp:Label>
        <asp:TextBox ID="txtFrameWidth" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate cost" OnClick="btnCalculate_Click" /><br />
        <asp:Label ID="lblArea" runat="server" Text="Window area (m^2): "></asp:Label>
        <asp:TextBox ID="txtArea" runat="server" Enabled="false"></asp:TextBox><br />
        <asp:Label ID="lblPerimeter" runat="server" Text="Border perimeter (m): "></asp:Label>
        <asp:TextBox ID="txtPerimeter" runat="server" Enabled="false"></asp:TextBox><br />
        <asp:Label ID="lblCost" runat="server" Text="Cost (without VAT): "></asp:Label>
        <asp:TextBox ID="txtCost" runat="server" Enabled="false"></asp:TextBox><br />
    </div>
    <div id="error">
        <asp:Label ID="lblError" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
