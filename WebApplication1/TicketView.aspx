<%@ Page Title="Tickets" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketView.aspx.cs" Inherits="WebApplication1.TicketView" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Contsent1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="formBorder">
    <link rel="stylesheet" href="content/style1.css" type="text/css" media="screen" />


    <h1 class ="headerH1" >Ticket View </h1>

    <asp:SqlDataSource ID="MITAMConnection" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT
	TicketID AS &quot;ID&quot;,
	TicketTitle AS &quot;Title&quot;,
	TicketDetails AS &quot;Details&quot;,
	UrgencyLevel AS &quot;Urgency&quot;,
	TicketStatus AS &quot;Ticket Status&quot;,
	TicketDate AS &quot;Date Logged&quot;,
	System AS &quot;System Affected&quot;,
	CONCAT (FirstName, ' ', LastName) AS &quot;User&quot;
FROM
	Tickets t
INNER JOIN Urgency u ON u.UrgencyID = t.UrgencyID
INNER JOIN TicketStatusDim ts ON ts.TicketStatusID = t.TicketStatusID
INNER JOIN Users us ON us.UserID = t.UserID
INNER JOIN System s ON s.SystemID = t.SystemID;
"></asp:SqlDataSource>
    
<div class="userList" style="margin-left: 10%">
            <asp:GridView ID="XmlGridView" runat="server" style="margin-top:5%; width: 90%;" ShowFooter="True" DataSourceID="MITAMConnection" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="XmlGridView_SelectedIndexChanged" AutoGenerateColumns="False" >
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                    <asp:BoundField DataField="Urgency" HeaderText="Urgency" SortExpression="Urgency" />
                    <asp:BoundField DataField="Ticket Status" HeaderText="Ticket Status" SortExpression="Ticket Status" />
                    <asp:BoundField DataField="Date Logged" HeaderText="Date Logged" SortExpression="Date Logged" />
                    <asp:BoundField DataField="System Affected" HeaderText="System Affected" SortExpression="System Affected" />
                    <asp:BoundField DataField="User" HeaderText="User" ReadOnly="True" SortExpression="User" />
                </Columns>
                <HeaderStyle BackColor="#555555" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
            </asp:GridView>

            <br />
    <h1 class="h1">TICKETS RECEVIED VIA EMAIL</h1>
    <asp:GridView ID="GridView11" runat="server" style="margin-top:5%; width: 90%;" ShowFooter="True" DataSourceID="Email" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="XmlGridView_SelectedIndexChanged" AutoGenerateColumns="False" >
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                </Columns>
                <HeaderStyle BackColor="#555555" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
            </asp:GridView>

            <asp:SqlDataSource ID="Email" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT
	TicketID AS &quot;ID&quot;,
	TicketTitle AS &quot;Title&quot;,
TicketDetails AS &quot;Details&quot;
FROM
	Tickets 
WHERE SystemID is null"></asp:SqlDataSource>

            <br />

        </div>  
    </div>

</asp:Content>
