<%@ Page Title="Tickets" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketView.aspx.cs" Inherits="WebApplication1.TicketView" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
INNER JOIN System s ON s.SystemID = t.SystemID;"></asp:SqlDataSource>
    
<div class="userList" style="margin-left: 10%">
            <asp:GridView ID="XmlGridView" runat="server" style="margin-top:5%; width: 90%;" ShowFooter="True" DataSourceID="MITAMConnection" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="XmlGridView_SelectedIndexChanged" >
                <HeaderStyle BackColor="#555555" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
            </asp:GridView>

            <br />

            <br />

        </div>  
    </div>

</asp:Content>
