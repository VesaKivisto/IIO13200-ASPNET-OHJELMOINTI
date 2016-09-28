<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="Calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Today is: <asp:Label ID="lblCurrentDate" runat="server" /></h1>
        Selected date: <asp:Label ID="lblSelectedDate" runat="server" /><br />
        Difference between current date and selected date: <asp:Label ID="lblDifference" runat="server" /><br />
        <asp:Button ID="btnPreviousYear" runat="server" Text="< Year" OnClick="btnPreviousYear_Click" />
        <asp:Button ID="btnNextYear" runat="server" Text="Year >   " OnClick="btnNextYear_Click" />
        <asp:Calendar ID="calDate" runat="server" OnSelectionChanged="calDate_SelectionChanged" AutoPostBack="true" />
    </div>
    </form>
</body>
</html>
