<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewFeedbacks.aspx.cs" Inherits="ViewFeedbacks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Feedbacks</h1>
        <br />
        <asp:Button ID="btnGetFeedbacksFromXML" Text="Get feedbacks from XML" runat="server" OnClick="btnGetFeedbacksFromXML_Click" />
        <asp:Button ID="btnGetFeedbacksFromMySQL" Text="Get feedbacks from MySQL" runat="server" OnClick="btnGetFeedbacksFromMySQL_Click" /><br />
        <br />
        <asp:GridView ID="gvFeedbacks" runat="server"></asp:GridView>
        <asp:Label ID="lblMessages" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
