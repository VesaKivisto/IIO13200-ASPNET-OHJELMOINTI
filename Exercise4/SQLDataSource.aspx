<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SQLDataSource.aspx.cs" Inherits="SQLDataSource" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:SqlDataSource ID="srcCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:Customers %>" SelectCommand="SELECT [astunnus], [asnimi], [yhteyshlo], [postitmp] FROM [asiakas]"></asp:SqlDataSource>
    <asp:GridView ID="gvCustomers" DataSourceID="srcCustomers" runat="server"></asp:GridView>
</asp:Content>

