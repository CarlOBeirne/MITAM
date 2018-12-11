<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="WebApplication1.Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT U.UserID AS UID, CONCAT(U.FirstName, ' ', U.LastName) AS Name
FROM Users AS A
INNER JOIN Users AS U
ON A.UserID = U.UserID
Order By U.UserID;"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT AT.AssetType AS Asset
FROM AssetType AS A
INNER JOIN AssetType AS AT
ON A.AssetTypeID = AT.AssetTypeID
ORDER BY AT.AssetTypeID; "></asp:SqlDataSource>


    <div class="assetForm">
        <div class="AssetSectionHead">
            <h1 class="AssetHeading">Asset Upload Form</h1>
        </div>

        <div class="AssetSection">
            <asp:Label ID="Label6" runat="server" Text="User"></asp:Label><br />
            <asp:DropDownList ID="User" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="UID"></asp:DropDownList>
        </div>
        <div class="AssetSection">
            <asp:Label ID="Label4" runat="server" Text="Asset Type"></asp:Label><br />
            <asp:DropDownList ID="AssetType" runat="server" DataSourceID="SqlDataSource2" DataTextField="Asset" DataValueField="Asset"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="AssetType" ErrorMessage="Asset Type Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="AssetSection">
            <asp:Label ID="Label1" runat="server" Text="Brand"></asp:Label><br />
            <asp:TextBox ID="AssetBrand" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AssetBrand" ErrorMessage="Brand Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="AssetSection">
            <asp:Label ID="Label2" runat="server" Text="Model"></asp:Label><br />
            <asp:TextBox ID="AssetModel" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="AssetModel" ErrorMessage="Asset Model Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="AssetSection2">
            <asp:Label ID="Label3" runat="server" Text="Purchase Dates"></asp:Label><br />
            <asp:TextBox ID="PurchaseDate" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PurchaseDate" ErrorMessage="Asset Purchase Date Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        
        <div class="AssetSection2">
            <asp:Label ID="Label5" runat="server" Text="Serial Number"></asp:Label><br />
            <asp:TextBox ID="AssetSN" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="AssetSN" ErrorMessage="Serial Number Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="AssetSection2">
            <asp:Label ID="Label7" runat="server" Text="CPU"></asp:Label><br />
            <asp:TextBox ID="AssetCPU" runat="server"></asp:TextBox>
        </div>
        <div class="AssetSection2">
            <asp:Label ID="Label8" runat="server" Text="RAM"></asp:Label><br />
            <asp:TextBox ID="AssetRAM" runat="server"></asp:TextBox>
        </div>
        <div class="AssetSection2">
            <asp:Label ID="Label9" runat="server" Text="Storage"></asp:Label><br />
            <asp:TextBox ID="AssetStorage" runat="server"></asp:TextBox>
        </div>

    </div>

</asp:Content>
