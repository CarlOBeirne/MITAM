<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketSubmitForm.aspx.cs" Inherits="WebApplication1.TicketSubmitForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width:auto; height:auto;">
        <table class="nav-justified">
            <tr>
                <td style="width: 426px">Your username</td>
                <td>
                    <asp:Label ID="Username" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 426px; height: 22px">Title</td>
                <td style="height: 22px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 426px">Details of the problem</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 426px; height: 22px">System affected</td>
                <td style="height: 22px">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SystemLevel" DataTextField="System" DataValueField="System">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SystemLevel" runat="server" ConnectionString="<%$ ConnectionStrings:MITAMconnectionString %>" SelectCommand="SELECT [System] FROM [System]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 426px">Urgency level</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="UrgencyLevel" DataTextField="UrgencyLevel" DataValueField="UrgencyLevel">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="UrgencyLevel" runat="server" ConnectionString="<%$ ConnectionStrings:MITAMconnectionString %>" SelectCommand="SELECT [UrgencyLevel] FROM [Urgency]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 426px">
                    <asp:Button ID="SubmitTicket" runat="server" OnClick="SubmitTicket_Click" Text="Submit" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
