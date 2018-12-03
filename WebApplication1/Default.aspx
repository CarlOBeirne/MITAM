<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <link rel="stylesheet" href="content/site.css" type="text/css" media="screen" />
       
      
    <div class="jumbotron">
        <h1>Major IT Asset Management</h1>   
        <p class="HT">
            View your Assets here
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT AssetType.AssetType AS Expr1, COUNT(Assets.AssetTypeID) AS Expr2 FROM AssetType INNER JOIN Assets ON AssetType.AssetTypeID = Assets.AssetTypeID GROUP BY AssetType.AssetType"></asp:SqlDataSource>

    <div class="pie">
         
        <asp:Chart class="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="410px">
            <Series>
                <asp:Series BorderDashStyle="DashDotDot" Color="Pink" Name="Asset" XValueMember="Expr1" YValueMembers="Expr2" ChartType="StackedBar">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        

    
   </div>
       
        
    
    </div>
</asp:Content>
