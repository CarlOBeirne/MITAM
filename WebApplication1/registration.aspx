<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="WebApplication1.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="text-right" style="width: 203px; height: 24px">First Name</td>
            <td class="text-left" style="height: 24px; width: 199px">
                <asp:TextBox ID="FirstName" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td style="height: 24px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstName" ErrorMessage="First name required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 203px">Last Name</td>
            <td class="text-left" style="width: 199px">
                <asp:TextBox ID="LastName" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastName" ErrorMessage="Last name required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 203px">Job Title</td>
            <td class="text-left" style="width: 199px">
                <asp:TextBox ID="JobTitle" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="JobTitle" ErrorMessage="Job title required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 203px; height: 22px">Email</td>
            <td class="text-left" style="width: 199px; height: 22px">
                <asp:TextBox ID="Email" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td style="height: 22px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Email" ErrorMessage="Email address required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="You must enter a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 203px">Password</td>
            <td class="text-left" style="width: 199px">
                <asp:TextBox ID="PasswordHash" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="PasswordHash" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 203px; height: 20px">Confirm Password</td>
            <td class="text-left" style="height: 20px; width: 199px">
                <asp:TextBox ID="PasswordHash1" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td style="height: 20px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="PasswordHash1" ErrorMessage="Confirm the passord" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordHash" ControlToValidate="PasswordHash1" ErrorMessage="Passwords must match" ForeColor="#FF3300"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 203px">Role</td>
            <td class="text-left" style="width: 199px">
                <asp:DropDownList ID="RoleID" runat="server" Width="180px" DataSourceID="ConnectionToRolesTable" DataTextField="Role" DataValueField="RoleID">
                    <asp:ListItem>Agent</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="ConnectionToRolesTable" runat="server" ConnectionString="<%$ ConnectionStrings:MITAMconnectionString %>" SelectCommand="SELECT * FROM [Roles]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="RoleID" ErrorMessage="Role required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 203px">&nbsp;</td>
            <td class="text-left" style="width: 199px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add User" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
