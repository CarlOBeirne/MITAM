<%@ Page Title="Assets" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Assets.aspx.cs" Inherits="WebApplication1.Assets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="header" style="text-align:center;">

            <h1 >Assets</h1>
        
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MITAMconnectionString %>" SelectCommand="SELECT [AssetID], [AssetTitle], [UserID], [AssetPurchaseDate], [AssetSN] FROM [Assets]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="AssetID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="AssetID" HeaderText="AssetID" ReadOnly="True" SortExpression="AssetID" />
            <asp:BoundField DataField="AssetTitle" HeaderText="AssetTitle" SortExpression="AssetTitle" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
            <asp:BoundField DataField="AssetPurchaseDate" HeaderText="AssetPurchaseDate" SortExpression="AssetPurchaseDate" />
            <asp:BoundField DataField="AssetSN" HeaderText="AssetSN" SortExpression="AssetSN" />

            <asp:TemplateField HeaderText="Operations">

                <ItemTemplate>
                    <asp:Button ID="BtnEdit" runat="server" CommandName="Edit" Text="Edit" class="btn btn-default"/>
                    <asp:Button ID="BtnDelete" runat="server" CommandName="Delete" Text="Delete" class="btn btn-default"/>
                </ItemTemplate>


                <EditItemTemplate>
                    <asp:Button ID="BthUpdate" runat="server" CommandName="Update" Text="Update" class="btn btn-default"/>
                    <asp:Button ID="BtnCancel" runat="server" CommandName="Cancel" Text="Cancel" class="btn btn-default"/>
                </EditItemTemplate>

            </asp:TemplateField>
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
    
    <asp:Button ID="Button1" runat="server" Text="Button" />


</asp:Content>
