﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index_master.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>IIO13200 .NET Ohjelmointi</title>
    <link href="CSS/demo.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div>
        <h1>IIO13200. NET Ohjelmointi</h1>
        <h2>1.kontaktikerta</h2>
        <p>Lorum ipsum ja niinpoispäin...</p>
        <h3>Perus HTML kontrolleja</h3>
        <a href="TestiAamu.html">Testi html-sivu (aamu)</a>
        <p>
            Esimerkki ASP.NET DataKontrollista
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ShowPhotos.aspx">Show Photos</asp:HyperLink>
        </p>
        <p>
            Esimerkki kuinka koodissa rakennetaan HTML:ää
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ShowCustomers.aspx">Show WineCustomers</asp:HyperLink>
        </p>
    </div>
</asp:Content>
