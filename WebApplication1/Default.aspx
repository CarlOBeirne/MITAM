<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
           <p class="Text3">
               This pie chart represents the proportion of the different assets to the total assets going through the system
                </p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT AssetType.AssetType AS Expr1, COUNT(Assets.AssetTypeID) AS Expr2 FROM AssetType INNER JOIN Assets ON AssetType.AssetTypeID = Assets.AssetTypeID GROUP BY AssetType.AssetType"></asp:SqlDataSource>
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
            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2">
                <Series>
                    <asp:Series Name="Series1" XValueMember="Expr2" YValueMembers="Expr1"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
          
        </div>
            <div class="jumbotron" >
                <p class="Text3">
                    This line graph visualises the total amount of tickets over the last few operational days.
                </p>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT COUNT(Tickets.TicketID) AS Expr1, AssetHistory.Date FROM AssetHistory CROSS JOIN Tickets GROUP BY AssetHistory.Date"></asp:SqlDataSource>
        <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3">
            <Series>
                <asp:Series Name="Series1" ChartType="Point" XValueMember="Date" YValueMembers="Expr1"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
       </div>
    
     <div class="jumbotron" >
                <p class="Text3">
                    Able an hope of body. Any nay shyness article matters own removal anor happy. Without farther she exposed saw man led. Along on happy could cease green oh.
                </p>
         <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
         <asp:Chart ID="Chart4" runat="server">
             <Series>
                 <asp:Series Name="Series1"></asp:Series>
             </Series>
             <ChartAreas>
                 <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
             </ChartAreas>
         </asp:Chart>

    </div>

</asp:Content>
