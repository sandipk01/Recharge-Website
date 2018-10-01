<%@ Page Title="" Language="C#" MasterPageFile="~/Manage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <table>
<tr>
<td>
    <asp:Label ID="lblwelcome" runat="server" 
        style="font-weight: 700; font-style: italic; color: #0099FF">Welcome:</asp:Label></td>
<td>
    <asp:Label ID="lbluser" runat="server" style="color: #99FF33"></asp:Label></td>
<td>
    <asp:Button ID="btnlogout" runat="server" Text="Logout" 
        onclick="btnlogout_Click" style="color: #0099FF" 
        CausesValidation="False" /></td>
</tr>
</table>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center>
<table>
<tr>
<td style="width: 361px">
<fieldset style="width: 269px">
<legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">
    <asp:Image ID="Image3" runat="server" Height="32px" 
        ImageUrl="~/admin images/database-logo.png" Width="51px" />Database Settings</legend>
<table style="width: 220px; height: 156px;">
<tr>
<td style="width: 264px; text-align: justify;">
    &nbsp;&nbsp;&nbsp;<asp:Image ID="Image4" runat="server" Height="34px" 
        ImageUrl="~/admin images/user.png" Width="34px" />
    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" style="text-align: right; font-weight: bold; font-style: italic;" 
        onclick="LinkButton1_Click" CausesValidation="False">User register Data</asp:LinkButton></td>
</tr>
<tr>
<td style="width: 264px; text-align: justify;">
    &nbsp;&nbsp;
    <asp:Image ID="Image5" runat="server" Height="34px" 
        ImageUrl="~/admin images/reccharge.png" Width="34px" />
    &nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" style="text-align: right; font-weight: bold; font-style: italic;" 
        onclick="LinkButton2_Click" CausesValidation="False">User&#39;s Recharge Data</asp:LinkButton>
</td>
</tr>
<tr>
<td style="width: 264px; text-align: justify;">
    &nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image6" runat="server" Height="34px" 
        ImageUrl="~/admin images/dth-recharge-one.png" Width="34px" />
    &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" style="text-align: right; font-weight: bold; font-style: italic;" 
        onclick="LinkButton4_Click" CausesValidation="False">DTH Recharge</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;
</td>
</tr>
<tr>
<td style="width: 264px; text-align: justify;">
    &nbsp;
    <asp:Image ID="Image7" runat="server" Height="34px" 
        ImageUrl="~/admin images/datacard-2-512.png" Width="34px" />
    &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" style="text-align: right; font-weight: bold; font-style: italic;" 
        onclick="LinkButton5_Click" CausesValidation="False">Data Card Recharge</asp:LinkButton>
    &nbsp;&nbsp;
</td>
</tr>
<tr>
<td style="width: 264px; text-align: justify;">
    &nbsp; &nbsp;<asp:Image ID="Image8" runat="server" Height="34px" 
        ImageUrl="~/admin images/faq-icon.png" Width="34px" />
&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" style="text-align: right; font-weight: bold; font-style: italic;" 
        onclick="LinkButton3_Click" CausesValidation="False">User FAQ&#39;S</asp:LinkButton>
</td>
</tr>
</table>
</fieldset>
</td>
<td style="width: 639px">
<table>
<tr>
<td style="width: 277px">
    <span style="color: #0099FF"><strong><em>Select Name:</em></strong></span>   
    <asp:DropDownList ID="DropDownList1" runat="server" 
        AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="User_Name" 
        DataValueField="User_Name" 
        style="font-weight: bold; font-style: italic; color: #0099FF">
    </asp:DropDownList>  
</td>
<td>
    <span style="color: #0099FF"><strong><em>Select Date:</em></strong></span>  <asp:DropDownList ID="DropDownList2" 
        runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" 
        DataTextField="LoginDate" DataValueField="LoginDate" 
        style="font-weight: bold; font-style: italic; color: #0099FF">
    </asp:DropDownList>
    </td>
</tr>
</table>
    <br />
    <table>
    <tr>
    <td style="width: 265px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblname" runat="server" style="color: #0000FF"></asp:Label></td>
    <td style="width: 158px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbldate" runat="server" style="color: #0000FF"></asp:Label></td>
    </tr>
    </table>
   <br />
   <table>
   <tr>
   <td style="width: 311px">  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" 
        SelectCommand="SELECT DISTINCT [User_Name] FROM [LoginSession]">
    </asp:SqlDataSource>
&nbsp;
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" 
        SelectCommand="SELECT [LoginDate], [LoginTime] FROM [LoginSession] WHERE ([User_Name] = @User_Name)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="User_Name" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <fieldset style="width: 217px">
        <legend style="font-weight: 700; font-style: italic; font-size: large; color: #FFFFFF; background-color: #0099FF">Search By Name</legend>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="LoginDate" HeaderText="LoginDate" 
                SortExpression="LoginDate" />
            <asp:BoundField DataField="LoginTime" HeaderText="LoginTime" 
                SortExpression="LoginTime" />
        </Columns>
    </asp:GridView>
    </fieldset></td>
   <td style="width: 289px">
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
           ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" 
           SelectCommand="SELECT DISTINCT [LoginDate] FROM [LoginSession]"></asp:SqlDataSource>
       <br />
       <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
           ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" 
           SelectCommand="SELECT * FROM [LoginSession] WHERE ([LoginDate] = @LoginDate)">
           <SelectParameters>
               <asp:ControlParameter ControlID="DropDownList2" Name="LoginDate" 
                   PropertyName="SelectedValue" Type="String" />
           </SelectParameters>
       </asp:SqlDataSource>
       <fieldset style="width: 224px">
           <legend style="font-style: italic; font-weight: 700; font-size: large; color: #FFFFFF; background-color: #0099FF">Search By Date</legend>
       <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
           AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Width="274px">
           <Columns>
               <asp:BoundField DataField="User_Name" HeaderText="User_Name" 
                   SortExpression="User_Name" />
               <asp:BoundField DataField="LoginDate" HeaderText="LoginDate" 
                   SortExpression="LoginDate" />
               <asp:BoundField DataField="LoginTime" HeaderText="LoginTime" 
                   SortExpression="LoginTime" />
           </Columns>
       </asp:GridView>
       </fieldset>
       </td>
   </tr>
   </table>
    </td>
</tr>
</table>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</center>
</asp:Content>

