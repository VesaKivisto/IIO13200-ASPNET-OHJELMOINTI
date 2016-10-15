<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AlbumPage.aspx.cs" Inherits="AlbumPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <img style="margin-bottom:20px;" src="" id="albumImg" runat="server" />
        <h2 id="albumName" runat="server"/>
        <asp:Label Text="ISBN:" runat="server" Font-Bold="true" Font-Size="Larger" />
        <asp:Label ID="lblISBN" Text="" runat="server" Font-Size="Larger" /><br />
        <asp:Label Text="Price:" runat="server" Font-Bold="true" Font-Size="Larger" />
        <asp:Label ID="lblPrice" Text="" runat="server" Font-Size="Larger" /><br />
        <asp:Label Text="Songs:" runat="server" Font-Bold="true" Font-Size="Larger" /><br />
        <div id="divSongs" runat="server" style="font-size:17px;" /><br />
        <a href="Levykauppax.aspx" runat="server">Back to store</a>
        <div id="test" runat="server" />
    </div>
</asp:Content>

