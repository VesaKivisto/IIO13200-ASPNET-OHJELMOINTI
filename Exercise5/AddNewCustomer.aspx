<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNewCustomer.aspx.cs" Inherits="AddNewCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Add new customer</h1>
            ID: <asp:TextBox ID="txtID" runat="server" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtID" ErrorMessage="This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtID" ValidationExpression="^[a-öA-Ö0-9]+$" ErrorMessage="Only numbers!" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
            Name: <asp:TextBox ID="txtName" runat="server" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" ErrorMessage="This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtName" ValidationExpression="^[a-öA-Ö]+$" ErrorMessage="Only alphabets!" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
            Contact person: <asp:TextBox ID="txtContact" runat="server" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtContact" ErrorMessage="This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtContact" ValidationExpression="^[a-öA-Ö]+$" ErrorMessage="Only alphabets!" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
            Country code: <asp:TextBox ID="txtCountryCode" runat="server" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCountryCode" ErrorMessage="This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtCountryCode" ValidationExpression="^[a-öA-Ö]+$" ErrorMessage="Only alphabets!" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
            Postal code: <asp:TextBox ID="txtPostalCode" runat="server" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPostalCode" ErrorMessage="This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtPostalCode" ValidationExpression="^[0-9]+$" ErrorMessage="Only numbers!" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
            Post office: <asp:TextBox ID="txtPostOffice" runat="server" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPostOffice" ErrorMessage="This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtPostOffice" ValidationExpression="^[a-öA-Ö]+$" ErrorMessage="Only alphabets!" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
            Purchases: <asp:TextBox ID="txtPurchases" runat="server" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPurchases" ErrorMessage="This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtPurchases" ValidationExpression="^[0-9]+$" ErrorMessage="Only numbers!" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
            Customer since (year): <asp:TextBox ID="txtYear" runat="server" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtYear" ErrorMessage="This field is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtYear" ValidationExpression="^[0-9]+$" ErrorMessage="Only numbers!" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="btnAddNewCustomer" Text="Add customer" runat="server" OnClick="btnAddNewCustomer_Click" />
            <br />
            <asp:Label ID="lblMessage" runat="server"/>
            <br />
            <a href="ShowCustomers.aspx">Back</a>
        </div>
    </form>
</body>
</html>
