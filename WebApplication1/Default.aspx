<%@ Page Title="Log In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p class="text-center" style="font-size: xx-large">
        <strong>Login Page</strong></p>
    <table style="width: 100%; border: 1px solid #000000">
        <tr>
            <td class="text-right" style="width: 266px; height: 22px">Username:</td>
            <td style="height: 22px">
                <asp:TextBox ID="Email" runat="server" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Username required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td class="text-right" style="width: 266px">Password:</td>
            <td>
                <asp:TextBox ID="PasswordHash" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordHash" ErrorMessage="Password required." ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 266px">&nbsp;</td>
            <td>
                <asp:Button ID="Button_Login" runat="server" OnClick="Button_Login_Click" Text="Login" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
