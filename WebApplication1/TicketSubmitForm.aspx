<%@ Page Title="Submit Ticket" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketSubmitForm.aspx.cs" Inherits="WebApplication1.TicketSubmitForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="content/style1.css" type="text/css" media="screen" />
    <div style="width:auto; height:auto;">
     <div class="formBorder">
        <h1 class="headerH1">SUBMIT A TICKET</h1>
        <table class="nav-justified">
            <tr>
                <td style="width: 459px; text-align: center;"><strong>YOUR USER ID:</strong></td>
                <td>
                    <asp:Label ID="UserID" runat="server" Width="100%"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 459px; color: #000000; text-align: center;"><strong>YOUR USERNAME:</strong></td>
                <td>
                    <asp:Label ID="Email" runat="server" Width="100%"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 459px; height: 22px; text-align: center;"><strong>TICKET TITLE:</strong></td>
                <td style="height: 22px">
                    <asp:TextBox class="freetext" ID="TicketTitle" runat="server" CssClass="freetext" Wrap="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 459px; text-align: center; height: 31px;"><strong>DETAILS OF THE PROBLEM:</strong></td>
                <td style="height: 31px">
                    <asp:TextBox class="freetext" ID="TicketDetails" runat="server" Wrap="False" CssClass="freetext"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 459px; height: 22px; text-align: center;"><strong>SELECT THE SYSTEM AFFECTED:</strong></td>
                <td style="height: 22px">
                    <asp:DropDownList class="dropdown" ID="SystemID" runat="server" DataSourceID="SystemLevel" DataTextField="System" DataValueField="SystemID" CssClass="dropdown">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SystemLevel" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT [System], [SystemID] FROM [System]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 459px; height: 45px; text-align: center;"><strong>URGENCY LEVEL OF TICKET:</strong></td>
                <td style="height: 45px">
                    <asp:DropDownList class="dropdown" ID="UrgencyID" runat="server" DataSourceID="UrgencyLevel" DataTextField="UrgencyLevel" DataValueField="UrgencyID" style="left: 0px; top: -1px" CssClass="dropdown">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="UrgencyLevel" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT [UrgencyLevel], [UrgencyID] FROM [Urgency]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 459px; height: 45px; text-align: center;"><strong>DATE TICKET SUBMITTED:</strong></td>
                <td style="height: 45px">
                    <asp:Label ID="TicketDate" runat="server" Width="100%"></asp:Label>
                </td>
            </tr>
            </table>
    <asp:Button class="btn1" ID="SubmitTicket" runat="server" OnClick="SubmitTicket_Click" Text="SUBMIT TICKET" />
    </div>
        </div>
</asp:Content>
