<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="WebApplication1.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="content/style1.css" type="text/css" media="screen" />
     <div class="formBorder">
    <h1 class="headerH1">REGISTER A NEW USER</h1>
    <table class="nav-justified">
        <tr>
            <td style="width: 293px; height: 24px"><strong>FIRST NAME</strong></td>
            <td style="height: 24px; width: 1062px">
                <asp:TextBox ID="FirstName" runat="server" Width="180px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstName" ErrorMessage="First name required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 293px"><strong>LAST NAME</strong></td>
            <td style="width: 1062px">
                <asp:TextBox ID="LastName" runat="server" Width="180px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastName" ErrorMessage="Last name required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 293px; height: 30px;"><strong>JOB TITLE</strong></td>
            <td style="width: 1062px; height: 30px;">
                <asp:TextBox ID="JobTitle" runat="server" Width="180px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="JobTitle" ErrorMessage="Job title required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 293px; height: 22px"><strong>EMAIL</strong></td>
            <td style="width: 1062px; height: 22px">
                <asp:TextBox ID="Email" runat="server" Width="180px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Email" ErrorMessage="Email address required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="You must enter a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 293px; height: 30px;"><strong>PASSWORD</strong></td>
            <td style="width: 1062px; height: 30px;">
                <asp:TextBox ID="PasswordHash" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="PasswordHash" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 293px; height: 20px"><strong>CONFIRM PASSWORD</strong></td>
            <td  style="height: 20px; width: 1062px">
                <asp:TextBox ID="PasswordHash1" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="PasswordHash1" ErrorMessage="Confirm the passord" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordHash" ControlToValidate="PasswordHash1" ErrorMessage="Passwords must match" ForeColor="#FF3300"></asp:CompareValidator>
            </td>
        </tr>
        </table>
    <asp:Button class="btn1" runat="server" OnClick="Button1_Click" Text="ADD USER" />
         </div>
</asp:Content>
