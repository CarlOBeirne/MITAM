<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AssetForm.aspx.cs" Inherits="WebApplication1.AssetForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="content/style1.css" type="text/css" media="screen" />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT UserID, CONCAT(FirstName, ' ', LastName) AS Name FROM Users"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT AT.AssetType AS Asset
FROM AssetType AS A
INNER JOIN AssetType AS AT
ON A.AssetTypeID = AT.AssetTypeID
ORDER BY AT.AssetTypeID; "></asp:SqlDataSource>


    <div class="assetForm">
        <div class="AssetSectionHead">
            <h1 class="headerH1">ASSET UPLOAD FORM</h1>
        </div>

        <table style="width: 100%; text-align: right;">
            <tr>
                <td>
                    <strong>USER</strong></td>
                <td>
                    <asp:DropDownList ID="UserID" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="UserID"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>ASSET TYPE</strong></td>
                <td>
                    <asp:DropDownList ID="AssetType" runat="server" DataSourceID="SqlDataSource2" DataTextField="Asset" DataValueField="Asset"></asp:DropDownList><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="AssetType" ErrorMessage="Asset Type Required" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td>
                    <strong>BRAND</strong></td>
                <td>
                    <asp:TextBox ID="AssetBrand" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AssetBrand" ErrorMessage="Brand Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>MODEL</strong></td>
                <td>
                    <asp:TextBox ID="AssetModel" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="AssetModel" ErrorMessage="Asset Model Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>PURCHASE DATES</strong></td>
                <td>
                    <asp:TextBox ID="PurchaseDate" runat="server"></asp:TextBox>

                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PurchaseDate" ErrorMessage="Asset Purchase Date Required" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td>
                    <strong>SERIAL</strong> <strong>NUMBER</strong></td>
                <td>
                    <asp:TextBox ID="AssetSN" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="AssetSN" ErrorMessage="Serial Number Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>
                    <asp:Label ID="Label7" runat="server" Text="CPU"></asp:Label></strong></td>
                <td>
                    <asp:TextBox ID="AssetCPU" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="AssetCPU" ErrorMessage="CPU Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>
                    <asp:Label ID="Label8" runat="server" Text="RAM"></asp:Label></strong></td>
                <td>
                    <asp:TextBox ID="AssetRAM" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="AssetRAM" ErrorMessage="RAM Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>STORAGE</strong></td>
                <td>
                    <asp:TextBox ID="AssetStorage" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="AssetStorage" ErrorMessage="Storage Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>

        <asp:Button Class="btn1" runat="server" Text="Record Asset" OnClick="Button1_Click" />

    </div>

</asp:Content>
