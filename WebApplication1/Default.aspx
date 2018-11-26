<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <Style>
       
        .pie{
        width: 100px;
        height: 340px;
        width:417px;
        position:center;
        }
        .HT{
        margin-left:25%;
        }

        .side{
        margin-left:25%; 
        position:center;
        }
             
    </style>
    <div class="jumbotron">
        <h1>Major IT Asset Management</h1>   
        <p class="HT">
            View your Assets here
        </p>
    <div class="pie">
         
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MITAMconnectionString %>" SelectCommand="SELECT AssetType.AssetType AS Expr1, COUNT(Assets.AssetTypeID) AS Expr2 FROM AssetType INNER JOIN Assets ON AssetType.AssetTypeID = Assets.AssetTypeID GROUP BY AssetType.AssetType"></asp:SqlDataSource>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="410px">
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
         <
            <div class="Side">        
                  <P>
                      Having trouble with your device?
                  </p>                      
                  <P>
                      Do you want to see the tickets?
                  </p> 
                
    
    
</asp:Content>
