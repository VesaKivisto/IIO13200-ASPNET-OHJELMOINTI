<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowCustomers.aspx.cs" Inherits="ShowCustomers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Show customers</h1>
            <asp:Button ID="btnGetAllCustomers" Text="Get all customers" runat="server" OnClick="btnGetAllCustomers_Click" />
            <asp:DropDownList ID="ddCountries" runat="server" AutoPostBack="true"></asp:DropDownList>
            <asp:Button ID="btnGetCustomersFromCountry" Text="Get customers from selected country" runat="server" OnClick="btnGetCustomersFromCountry_Click" />
            <asp:Button ID="btnListCustomersByCountry" Text="List customers based on country" runat="server" OnClick="btnListCustomersByCountry_Click" />
            <a href="AddNewCustomer.aspx">Add new customer</a>
            <asp:GridView ID="gvCustomers" runat="server" />
            <asp:Label ID="lblMessages" runat="server" />
            <div id="customersByCountry" runat="server"/>
        </div>
    </form>
</body>
</html>
