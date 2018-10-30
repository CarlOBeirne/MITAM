<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketForm.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header>

<h1> Ticketing Form</h1>
    </header>

    <%--<asp:Label ID="Label1" runat="server" Text="E-mail"></asp:Label>
    <br />


    <asp:Label ID="Label2" runat="server" Text="Asset Type"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" Width="148px"></asp:DropDownList>
    <br />


    <asp:Label ID="Label3" runat="server" Text="Urgency Level"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" Width="154px"></asp:DropDownList>
    <br />

    <asp:Label ID="Label4" runat="server" Text="Issue Details"></asp:Label>
    <asp:TextBox ID="Textbox1" runat="server" Height="94px" Width="162px"></asp:TextBox>--%>

    <!DOCTYPE html>
<html>
<style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

 input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

</style>
<body>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=mitam.database.windows.net;Initial Catalog=MajorIT;User ID=Stephen" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Email] FROM [Users]"></asp:SqlDataSource>


<div>
  <form action="/action_page.php">
    <label for="Email">Your Email</label>
      <asp:Label ID="LabelEmail" runat="server" Text="<%# Bind("Email") %>"></asp:Label>
      <br />

  
      
    <label for="AssetType">Asset Type</label>
    <select id="AssetType" name="AssetType">
      <option value="Laptop">Laptop</option>
      <option value="Monitor">Monitor</option>
      <option value="Hard Drive">Hard Drive</option>
    </select>
    <br />

      <label for="Urgency">Urgency Level</label>
    <select id="Urgency" name="Urgency">
      <option value="UrgencyHigh">High</option>
      <option value="UrgencyMedium">Medium</option>
      <option value="UrgencyLow">Low</option>
    </select>
    <br />

        <label for="IssueDetails">Issue Details</label>
    <input type="text" id="IssueDetails" name="IssueDetails" placeholder="Whats the issue..">
      <br />


      <input type="submit" value="Submit">
  
  </form>
</div>

</body>
</html>




</asp:Content>
