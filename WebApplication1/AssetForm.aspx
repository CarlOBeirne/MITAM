<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AssetForm.aspx.cs" Inherits="WebApplication1.AssetForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<link rel="stylesheet" href="content/Site.css" type="text/css" media="screen" />

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
            <asp:DropDownList ID="UserID" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="UID"></asp:DropDownList>
        </div>
        <div class="AssetSection">
            <asp:Label ID="Label1" runat="server" Text="Asset Title"></asp:Label><br />
            <asp:TextBox ID="AssetTitle" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AssetTitle" ErrorMessage="Asset Title Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="AssetSection">
            <asp:Label ID="Label2" runat="server" Text="Asset Notes"></asp:Label><br />
            <asp:TextBox ID="AssetNotes" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="AssetNotes" ErrorMessage="Asset Notes Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="AssetSection">
            <asp:Label ID="Label3" runat="server" Text="Purchase Dates"></asp:Label><br />
            <asp:TextBox ID="PurchaseDate" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PurchaseDate" ErrorMessage="Asset Purchase Date Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="AssetSection">
            <asp:Label ID="Label4" runat="server" Text="Asset Type"></asp:Label><br />
            <asp:DropDownList ID="AssetTypeID" runat="server" DataSourceID="SqlDataSource2" DataTextField="Asset" DataValueField="Asset"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="AssetTypeID" ErrorMessage="Asset Type Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="AssetSection">
            <asp:Label ID="Label5" runat="server" Text="Serial Number"></asp:Label><br />
            <asp:TextBox ID="AssetSN" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="AssetSN" ErrorMessage="Serial Number Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

       <asp:Button ID="AssetBtn" runat="server" Text="Submit Asset" OnClick="Button1_Click" />

    </div>

</asp:Content>
