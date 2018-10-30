<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketView.aspx.cs" Inherits="WebApplication1.TicketView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ticket View</h1>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TicketID" DataSourceID="SqlDataSource1" Height="310px" Width="393px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="TicketID" HeaderText="TicketID" ReadOnly="True" SortExpression="TicketID" />
            <asp:BoundField DataField="TicketTitle" HeaderText="TicketTitle" SortExpression="TicketTitle" />
            <asp:BoundField DataField="TicketDetails" HeaderText="TicketDetails" SortExpression="TicketDetails" />
            <asp:BoundField DataField="UrgencyID" HeaderText="UrgencyID" SortExpression="UrgencyID" />
            <asp:BoundField DataField="SystemID" HeaderText="SystemID" SortExpression="SystemID" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
        </Columns>





    </asp:GridView>
    
      
    

</asp:Content>
