<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MoviesSQL.aspx.cs" Inherits="MoviesSQL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <!-- DataSource -->
    <asp:SqlDataSource ID="srcMovies" runat="server" ConnectionString="<%$ ConnectionStrings:Movies %>" SelectCommand="SELECT [title], [director], [year], [url] FROM [Movies]"></asp:SqlDataSource>
    <!-- GridView -->
    <h1>Movies from database</h1>
    <asp:GridView ID="gvMovies" DataSourceID="srcMovies" HeaderStyle-BackColor="Blue" HeaderStyle-ForeColor="White" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="director" HeaderText="director" SortExpression="director" />
            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
        </Columns>
        <HeaderStyle BackColor="Blue" ForeColor="White"></HeaderStyle>
    </asp:GridView>
    <!-- Show posters using Repeater -->
    <asp:Repeater ID="Repeater1" DataSourceID="srcMovies" runat="server">
        <ItemTemplate>
            <h3><%# Eval("title") %></h3>
            <img src="<%# Eval("url") %>" alt="Missing picture" width="200" />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

