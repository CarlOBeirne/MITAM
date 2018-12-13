<%@ Page Title="Update Ticket" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateTickets.aspx.cs" Inherits="WebApplication1.UpdateTickets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="modal-lg" style="width: 371px">Select Ticket&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="UpdateTicket" DataTextField="TicketTitle" DataValueField="TicketID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="UpdateTicket" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT [TicketTitle], [TicketID] FROM [Tickets]
where TicketStatusID = 1"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="modal-lg" style="width: 371px">Update Status</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="TicketStatus" DataValueField="TicketStatusID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT [TicketStatusID], [TicketStatus] FROM [TicketStatusDim]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="modal-lg" style="width: 371px"></td>
            <td>
                <asp:Button ID="UpdateTicketsSQL" runat="server" OnClick="Button1_Click" Text="Update table" />
            </td>
        </tr>
    </table>
</asp:Content>
