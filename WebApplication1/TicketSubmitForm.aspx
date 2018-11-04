﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketSubmitForm.aspx.cs" Inherits="WebApplication1.TicketSubmitForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width:auto; height:auto;">
        <table class="nav-justified">
            <tr>
                <td style="width: 426px">Your used id</td>
                <td>
                    <asp:Label ID="UserID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 426px">Your username</td>
                <td>
                    <asp:Label ID="Email" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 426px; height: 22px">Title</td>
                <td style="height: 22px">
                    <asp:TextBox ID="TicketTitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 426px">Details of the problem</td>
                <td>
                    <asp:TextBox ID="TicketDetails" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 426px; height: 22px">System affected</td>
                <td style="height: 22px">
                    <asp:DropDownList ID="SystemID" runat="server" DataSourceID="SystemLevel" DataTextField="System" DataValueField="SystemID" Width="88px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SystemLevel" runat="server" ConnectionString="<%$ ConnectionStrings:MITAMconnectionString %>" SelectCommand="SELECT [System], [SystemID] FROM [System]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 426px">Urgency level</td>
                <td>
                    <asp:DropDownList ID="UrgencyID" runat="server" DataSourceID="UrgencyLevel" DataTextField="UrgencyLevel" DataValueField="UrgencyID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="UrgencyLevel" runat="server" ConnectionString="<%$ ConnectionStrings:MITAMconnectionString %>" SelectCommand="SELECT [UrgencyLevel], [UrgencyID] FROM [Urgency]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 426px">
                    <asp:Button ID="SubmitTicket" runat="server" OnClick="SubmitTicket_Click" Text="Submit" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
