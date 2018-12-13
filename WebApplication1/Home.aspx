<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<h1>Major IT Asset Management</h1>
    
    <div class="jumbotron">
        <p>

        </p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT AssetType.AssetType, COUNT(Assets.AssetID) AS Number FROM AssetType INNER JOIN Assets ON AssetType.AssetType = Assets.AssetType GROUP BY AssetType.AssetType"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="AssetType" HeaderText="AssetType" SortExpression="AssetType" />
                <asp:BoundField DataField="Number" HeaderText="Number" ReadOnly="True" SortExpression="Number" />
            </Columns>
            </asp:GridView>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="410px">
                <Series>
                    <asp:Series BorderDashStyle="DashDotDot" Color="Pink" Name="Asset" XValueMember="AssetType" YValueMembers="Number" ChartType="Pie">
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
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT TicketStatusDim.TicketStatus AS [Ticket Status], COUNT(TicketStatusDim_1.TicketStatusID) AS Amount FROM TicketStatusDim INNER JOIN TicketStatusDim AS TicketStatusDim_1 ON TicketStatusDim.TicketStatusID = TicketStatusDim_1.TicketStatusID GROUP BY TicketStatusDim.TicketStatus"></asp:SqlDataSource>

            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                 <Columns>
                 <asp:BoundField DataField="Ticket Status" HeaderText="Ticket Status" SortExpression="Ticket Status" />
                 <asp:BoundField DataField="Amount" HeaderText="Amount" ReadOnly="True" SortExpression="Amount" />
                </Columns>
                </asp:GridView>
         <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource3">
             <Series>
                 <asp:Series Name="Series1" ChartType="Pie" XValueMember="Ticket Status" YValueMembers="Amount"></asp:Series>
             </Series>
             <ChartAreas>
                 <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
             </ChartAreas>
         </asp:Chart>

    </div>




</asp:Content>

