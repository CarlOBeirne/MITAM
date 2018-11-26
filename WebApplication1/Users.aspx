<%@ Page Title="Users" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="WebApplication1.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class ="row">

        <div class="header" style="text-align:center;">

            <h1 >Users</h1>
        
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT [UserID], [FirstName], [LastName], [JobTitle], [Email] FROM [Users]" InsertCommand="INSERT INTO [Users] ([UserID], [FirstName], [LastName], [JobTitle], [Email]) VALUES (@UserID, @FirstName, @LastName, @JobTitle, @Email)">
            <InsertParameters>
                <asp:Parameter Name="UserID" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="JobTitle" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>

    <div class="clearfix" style="clear: both"></div>


        <div class="userList" style="margin-left: 10%">
            <asp:Button ID="Button1" runat="server" Text="Add User" OnClick="Button1_Click" />
            <asp:GridView ID="XmlGridView" runat="server" style="margin-top:5%; width: 90%;" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" ShowFooter="True" DataSourceID="ProperConnection" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="XmlGridView_SelectedIndexChanged2" >
            <AlternatingRowStyle BackColor="#DCDCDC" />
              

                <Columns>
                    <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="JobTitle" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />


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

            <asp:SqlDataSource ID="ProperConnection" runat="server" ConnectionString="<%$ ConnectionStrings:ProperConnection %>" SelectCommand="SELECT [UserID], [FirstName], [LastName], [JobTitle], [Email] FROM [Users]"></asp:SqlDataSource>

        </div>
            


    </div>

</asp:Content>
