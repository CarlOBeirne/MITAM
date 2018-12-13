<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>

.Text3{
float:right;
margin-right:20%;
width:35%;
margin-top:10%;




}
</style>
<h1>Major IT Asset Management</h1>
    
    <div class="jumbotron">
        <asp:SqlDataSource ID="SqlDataSource5" runat="server"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT AssetType.AssetType AS Expr1, COUNT(Assets.AssetID) AS Expr2 FROM AssetType INNER JOIN Assets ON AssetType.AssetType = Assets.AssetType GROUP BY AssetType.AssetType"></asp:SqlDataSource>
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="410px">
                <Series>
                    <asp:Series BorderDashStyle="DashDotDot" Color="Pink" Name="Asset" XValueMember="Expr1" YValueMembers="Expr2" ChartType="Pie">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
       </div>

            <div class="jumbotron" >
                 <p class="Text3">
                     This histogram displays the amount of tickets produced by each user. 
                </p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT COUNT(Tickets.TicketID) AS Expr1, Users.FirstName + ' ' + Users.LastName AS Expr2 FROM Users CROSS JOIN Tickets INNER JOIN Users AS Users_1 ON Tickets.UserID = Users.UserID GROUP BY Users.FirstName, Users.LastName"></asp:SqlDataSource>
            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" Width="294px">
                <Series>
                    <asp:Series Name="Series1" XValueMember="Expr2" YValueMembers="Expr1"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"> </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
          
        </div>
            <div class="jumbotron" >
                <p class="Text3">
                    This line graph visualises the total amount of tickets over the last few operational days.
                </p>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT COUNT(Tickets.TicketID) AS Expr1, AssetHistory.Date 
FROM AssetHistory 
CROSS JOIN Tickets 
WHERE AssetHistory.Date BETWEEN GETDATE() - 7 AND GETDATE()
GROUP BY AssetHistory.Date
 "></asp:SqlDataSource>
        <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" OnLoad="Chart3_Load" Width="267px">
            <Series>
                <asp:Series Name="Series1" ChartType="Point" XValueMember="Date" YValueMembers="Expr1" ChartArea="ChartArea1"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
       </div>
    
     <div class="jumbotron" >
                <p class="Text3">
                    This pie chart represents the ratio of tickets that have been completed to assets that have not been.
                </p>
         <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT TicketStatusDim.TicketStatus, COUNT(TicketStatusDim_1.TicketStatusID) AS Expr1 FROM TicketStatusDim INNER JOIN TicketStatusDim AS TicketStatusDim_1 ON TicketStatusDim.TicketStatusID = TicketStatusDim_1.TicketStatusID GROUP BY TicketStatusDim.TicketStatus"></asp:SqlDataSource>
         <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource4">
             <Series>
                 <asp:Series Name="Series1" ChartType="Pie" XValueMember="TicketStatus" YValueMembers="Expr1"></asp:Series>
             </Series>
             <ChartAreas>
                 <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
             </ChartAreas>
         </asp:Chart>

    </div>




</asp:Content>
