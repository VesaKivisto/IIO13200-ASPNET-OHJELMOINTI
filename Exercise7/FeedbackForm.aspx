<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FeedbackForm.aspx.cs" Inherits="FeedbackForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Feedback</h1>
        <br />
        Date:
        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDate" ErrorMessage="This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtDate" ValidationExpression="^[0-9\.]+$" ErrorMessage="Date must be in dd.mm.yyyy format" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        Name:
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" ErrorMessage="This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtName" ValidationExpression="^[a-öA-Ö0-9_\-,;:\.]+$" ErrorMessage="No special characters allowed" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        Course name and code: 
        <asp:TextBox ID="txtCourse" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCourse" ErrorMessage="This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtCourse" ValidationExpression="^[a-öA-Ö0-9_\-,;:\.]+$" ErrorMessage="No special characters allowed" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        I have learned:
        <asp:TextBox ID="txtHaveLearned" TextMode="multiline" Columns="25" Rows="2" runat="server" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtHaveLearned" ErrorMessage="This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtHaveLearned" ValidationExpression="^[a-öA-Ö0-9_\-,;:\.]+$" ErrorMessage="No special characters allowed" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        I want to learn:
        <asp:TextBox ID="txtWantToLearn" TextMode="multiline" Columns="25" Rows="2" runat="server" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtWantToLearn" ErrorMessage="This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtWantToLearn" ValidationExpression="^[a-öA-Ö0-9_\-,;:\.]+$" ErrorMessage="No special characters allowed" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        Good about this course:
        <asp:TextBox ID="txtGood" TextMode="multiline" Columns="25" Rows="2" runat="server" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtGood" ErrorMessage="This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtGood" ValidationExpression="^[a-öA-Ö0-9_\-,;:\.]+$" ErrorMessage="No special characters allowed" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        What could be better:
        <asp:TextBox ID="txtBetter" TextMode="multiline" Columns="25" Rows="2" runat="server" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtBetter" ErrorMessage="This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtBetter" ValidationExpression="^[a-öA-Ö0-9_\-,;:\.]+$" ErrorMessage="No special characters allowed" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        Anything else:
        <asp:TextBox ID="txtOther" TextMode="multiline" Columns="25" Rows="2" runat="server" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtOther" ErrorMessage="This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtOther" ValidationExpression="^[a-öA-Ö0-9_\-,;:\.]+$" ErrorMessage="No special characters allowed" ForeColor="Red"></asp:RegularExpressionValidator>
        <br />
        <asp:Button ID="btnSendFeedback" Text="Send feedback" runat="server" OnClick="btnSendFeedback_Click" />
        <br />
        <asp:Label ID="lblMessages" runat="server" />
    </div>
    </form>
</body>
</html>
