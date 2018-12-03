<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserLogged.aspx.cs" Inherits="WebApplication1.UserLogged" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width:100%; height:100%;">
        <asp:Label ID="Welcome" runat="server" Text="Welcome...."></asp:Label>
        <br />
        <asp:Button ID="Logout" runat="server" OnClick="Button1_Click" Text="Log out" />
    </div>
</asp:Content>
