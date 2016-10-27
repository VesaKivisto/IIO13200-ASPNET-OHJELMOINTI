<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Stuff.aspx.cs" Inherits="Stuff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:database %>"
        DeleteCommand="DELETE FROM [testi] WHERE [id] = @id"
        InsertCommand="INSERT INTO [testi] ([description], [name]) VALUES (@description, @name)"
        SelectCommand="SELECT [id], [name], [description] FROM [testi]"
        UpdateCommand="UPDATE [testi] SET [description] = @description, [name] = @name WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:database %>"
        DeleteCommand="DELETE FROM [testi] WHERE [id] = @original_id AND [name] = @original_name AND [description] = @original_description"
        InsertCommand="INSERT INTO [testi] ([name], [description]) VALUES (@name, @description)" OldValuesParameterFormatString="original_{0}"
        SelectCommand="SELECT [id], [name], [description] FROM [testi]"
        UpdateCommand="UPDATE [testi] SET [name] = @name, [description] = @description WHERE [id] = @original_id AND [name] = @original_name AND [description] = @original_description">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h1 class="w3-container w3-indigo">Some stuff</h1>
    <div class="w3-row">
        <!-- Left side shows everything -->
        <div class="w3-container w3-half">
            <asp:GridView ID="gvStuff" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="false" OnSelectedIndexChanged="gvStuff_SelectedIndexChanged">
                <Columns>
                    <asp:ButtonField DataTextField="id" HeaderText="ID" />
                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="description" HeaderText="Description" />
                </Columns>
            </asp:GridView>
        </div>
        <!-- Right side is for modifying selected row -->
        <div class="w3-container w3-half">
            <h2 class="w3-container w3-blue">Selected:</h2>
            <asp:Literal ID="myStuff" runat="server"></asp:Literal>
            <asp:DetailsView ID="dvStuff" runat="server" DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="true" />
                </Fields>
            </asp:DetailsView>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

