<%@ Page Title="Log In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="content/style1.css" type="text/css" media="screen" />
   <h1 class="headerH1">LOGIN PAGE</h1>
    <table style="width: 100%; border: 1px solid #000000">
        <tr>
            <td style="width: 266px; height: 22px"><strong>USERNAME:</strong></td>
            <td style="height: 22px">
                <asp:TextBox ID="Email" runat="server" Width="180px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Username required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 266px"><strong>PASSWORD:</strong></td>
            <td>
                <asp:TextBox ID="PasswordHash" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordHash" ErrorMessage="Password required." ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        </table>
    <asp:Button class="btn1" runat="server" OnClick="Button_Login_Click" Text="LOGIN" />
</asp:Content>
