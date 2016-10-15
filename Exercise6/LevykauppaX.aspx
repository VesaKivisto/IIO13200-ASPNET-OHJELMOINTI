<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LevykauppaX.aspx.cs" Inherits="LevykauppaX" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:XmlDataSource ID="srcAlbums" runat="server" DataFile="~/App_Data/LevykauppaX.xml" XPath="//record" />
    <asp:Repeater ID="Repeater1" DataSourceID="srcAlbums" runat="server">
         <HeaderTemplate>
            <table border="0">
        </HeaderTemplate>
         <ItemTemplate>
            <tr>
                <td rowspan="2" style="width:200px;"><img src="Images/<%# Eval("ISBN") %>.jpg" style="width:150px;" /></td>
                <td><%# Eval("Artist") %> - <%# Eval("Title") %></td> 
            </tr>
            <tr>
                <td>ISBN: <a href="AlbumPage.aspx?isbn=<%# Eval("ISBN") %>"><%# Eval("ISBN") %></a><br />Price: <%# Eval("Price") %></td></td>
            </tr>
        </ItemTemplate>
         <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>

