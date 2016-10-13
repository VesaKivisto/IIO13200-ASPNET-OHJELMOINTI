<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feeds.aspx.cs" Inherits="Feeds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:Button ID="btnGetFeedsIS" runat="server" Text="Get IS" OnClick="btnGetFeedsIS_Click" />
    <asp:Button ID="btnGetFeedsYle" runat="server" Text="Get YLE" OnClick="btnGetFeedsYle_Click" />
    <asp:XmlDataSource ID="myDataSource" runat="server" />
    <div id="myDiv" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

