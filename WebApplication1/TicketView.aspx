<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketView.aspx.cs" Inherits="WebApplication1.TicketView" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="content/Site.css" type="text/css" media="screen" />

    <h1 class ="TicketViewHead" >Ticket View </h1>

    <asp:SqlDataSource ID="MITAMConnection" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT [TicketID], [TicketTitle], [TicketDetails], [SystemID], [UrgencyID], [AssetID], [UserID], [TicketDate] FROM [Tickets]"></asp:SqlDataSource>
    
<div class="userList" style="margin-left: 10%">
            <asp:GridView ID="XmlGridView" runat="server" style="margin-top:5%; width: 90%;" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" ShowFooter="True" DataSourceID="MITAMConnection" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" >
            <AlternatingRowStyle BackColor="#DCDCDC" />
              

                <Columns>
                    <asp:BoundField DataField="TicketID" HeaderText="TicketID" SortExpression="TicketID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="TicketTitle" HeaderText="TicketTitle" SortExpression="TicketTitle" />
                    <asp:BoundField DataField="TicketDetails" HeaderText="TicketDetails" SortExpression="TicketDetails" />
                    <asp:BoundField DataField="SystemID" HeaderText="SystemID" SortExpression="SystemID" />
                    <asp:BoundField DataField="UrgencyID" HeaderText="UrgencyID" SortExpression="UrgencyID" />
                    <asp:BoundField DataField="AssetID" HeaderText="AssetID" SortExpression="AssetID" />
                    <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                    <asp:BoundField DataField="TicketDate" HeaderText="TicketDate" SortExpression="TicketDate" />
                </Columns>
              

                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#555555" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>

            <br />

        </div>  
    

</asp:Content>
