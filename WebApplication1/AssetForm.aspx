<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AssetForm.aspx.cs" Inherits="WebApplication1.AssetForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="content/site.css" type="text/css" media="screen" />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT AT.AssetType AS Asset
FROM AssetType AS A
INNER JOIN AssetType AS AT
ON A.AssetTypeID = AT.AssetTypeID
ORDER BY AT.AssetTypeID; "></asp:SqlDataSource>

    <div class="assetForm">

        <asp:Label ID="Label6" runat="server" Text="User"></asp:Label>
        <asp:DropDownList ID="UserID" runat="server" DataSourceID="SqlDataSource1" DataTextField="FirstName" DataValueField="UserID"></asp:DropDownList>
        
        <asp:Label ID="Label1" runat="server" Text="Asset Title"></asp:Label>
        <asp:TextBox ID="AssetTitle" runat="server"></asp:TextBox>

        <asp:Label ID="Label2" runat="server" Text="Asset Notes"></asp:Label>
        <asp:TextBox ID="AssetNotes" runat="server"></asp:TextBox>

        <asp:Label ID="Label3" runat="server" Text="Purchase Dates"></asp:Label>
        <asp:TextBox ID="PurchaseDate" runat="server"></asp:TextBox>

        <asp:Label ID="Label4" runat="server" Text="Asset Type"></asp:Label>
        <asp:DropDownList ID="AssetTypeID" runat="server" DataSourceID="SqlDataSource2" DataTextField="Asset" DataValueField="Asset"></asp:DropDownList>

        <asp:Label ID="Label5" runat="server" Text="Serial Number"></asp:Label>
        <asp:TextBox ID="AssetSN" runat="server"></asp:TextBox>

       <asp:Button ID="AssetBtn" runat="server" Text="Button" OnClick="Button1_Click" />

    </div>

</asp:Content>
