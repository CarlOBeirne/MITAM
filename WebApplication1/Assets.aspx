<%@ Page Title="Assets" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Assets.aspx.cs" Inherits="WebApplication1.Assets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<link rel="stylesheet" href="content/Site.css" type="text/css" media="screen" />
    <div class="header" style="text-align:center;">

        <h1 >Assets</h1>
        
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" DeleteCommand="DELETE FROM [Assets] WHERE [AssetID] = @AssetID" InsertCommand="INSERT INTO [Assets] ([AssetType], [Brand], [Model], [AssetPurchaseDate], [AssetSN], [CPU], [RAM], [Storage], [User]) VALUES (@AssetType, @Brand, @Model, @AssetPurchaseDate, @AssetSN, @CPU, @RAM, @Storage, @User)" SelectCommand="SELECT [AssetID], [AssetType], [Brand], [Model], [AssetPurchaseDate], [AssetSN], [CPU], [RAM], [Storage], [User] FROM [Assets]" UpdateCommand="UPDATE [Assets] SET [AssetType] = @AssetType, [Brand] = @Brand, [Model] = @Model, [AssetPurchaseDate] = @AssetPurchaseDate, [AssetSN] = @AssetSN, [CPU] = @CPU, [RAM] = @RAM, [Storage] = @Storage, [User] = @User WHERE [AssetID] = @AssetID">
        <DeleteParameters>
            <asp:Parameter Name="AssetID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AssetType" Type="String" />
            <asp:Parameter Name="Brand" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter DbType="Date" Name="AssetPurchaseDate" />
            <asp:Parameter Name="AssetSN" Type="String" />
            <asp:Parameter Name="CPU" Type="String" />
            <asp:Parameter Name="RAM" Type="String" />
            <asp:Parameter Name="Storage" Type="String" />
            <asp:Parameter Name="User" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AssetType" Type="String" />
            <asp:Parameter Name="Brand" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="AssetPurchaseDate" DbType="Date" />
            <asp:Parameter Name="AssetSN" Type="String" />
            <asp:Parameter Name="CPU" Type="String" />
            <asp:Parameter Name="RAM" Type="String" />
            <asp:Parameter Name="Storage" Type="String" />
            <asp:Parameter Name="User" Type="String" />
            <asp:Parameter Name="AssetID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" Width="100%" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="AssetID">
        <Columns>
            <asp:BoundField DataField="AssetID" HeaderText="AssetID" InsertVisible="False" ReadOnly="True" SortExpression="AssetID" />
            <asp:BoundField DataField="AssetType" HeaderText="AssetType" SortExpression="AssetType" />
            <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="AssetPurchaseDate" HeaderText="AssetPurchaseDate" SortExpression="AssetPurchaseDate" />
            <asp:BoundField DataField="AssetSN" HeaderText="AssetSN" SortExpression="AssetSN" />
            <asp:BoundField DataField="CPU" HeaderText="CPU" SortExpression="CPU" />
            <asp:BoundField DataField="RAM" HeaderText="RAM" SortExpression="RAM" />
            <asp:BoundField DataField="Storage" HeaderText="Storage" SortExpression="Storage" />
            <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />
        </Columns>
                
        
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle CssClass="GridView" BackColor="#555555" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle CssClass="GridView" BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />

    </asp:GridView>
    
    <asp:Button Class="AddRecordBtn" runat="server" Text="Button" OnClick="Button1_Click" />


</asp:Content>
