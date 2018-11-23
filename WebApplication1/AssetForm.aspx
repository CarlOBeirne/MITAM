<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AssetForm.aspx.cs" Inherits="WebApplication1.AssetForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="content/site.css" type="text/css" media="screen" />



    <div class="assetForm">

        <asp:Label ID="Label1" runat="server" Text="Asset Title"></asp:Label>
        <asp:TextBox ID="AssetTitle" runat="server"></asp:TextBox>

        <asp:Label ID="Label2" runat="server" Text="Asset Notes"></asp:Label>
        <asp:TextBox ID="AssetNotes" runat="server"></asp:TextBox>

        <asp:Label ID="Label3" runat="server" Text="Purchase Dates"></asp:Label>
        <asp:TextBox ID="PurchaseDate" runat="server"></asp:TextBox>

        <asp:Label ID="Label4" runat="server" Text="Asset Type"></asp:Label>
        <asp:TextBox ID="AssetType" runat="server"></asp:TextBox>

        <asp:Label ID="Label5" runat="server" Text="Serial Number"></asp:Label>
        <asp:TextBox ID="AssetSN" runat="server"></asp:TextBox>

       <asp:Button ID="AssetBtn" runat="server" Text="Button" OnClick="Button1_Click" />

    </div>

</asp:Content>
