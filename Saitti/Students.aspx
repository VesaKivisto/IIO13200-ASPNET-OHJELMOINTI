<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Students.aspx.cs" Inherits="Students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Students</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Students autumn 2016</h1>
        <div id="buttons">
            <asp:Button ID="btnGet3" runat="server" Text="Get 3 students" OnClick="btnGet3_Click" />
            <asp:Button ID="btnGetAll" runat="server" Text="Get all students" OnClick="btnGetAll_Click" />
            <asp:Button ID="btnGet4Objects" runat="server" Text="Get 4 student objects" OnClick="btnGet4Objects_Click" />
        </div>
        <div id="data">
            <asp:GridView ID="gvStudents" runat="server" />
        </div>
        <div id="footer">
            <asp:Label ID="lblMessages" runat="server" />
        </div>
    </div>
    </form>
</body>
</html>
