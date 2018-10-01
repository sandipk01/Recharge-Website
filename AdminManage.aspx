<%@ Page Title="" Language="C#" MasterPageFile="~/Manage.master" AutoEventWireup="true" CodeFile="AdminManage.aspx.cs" Inherits="AdminManage" %>

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
    <center style="width:900px">
<div>
  <center>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
      <asp:Image ID="Image1" runat="server" Height="118px" 
        ImageUrl="~/admin images/admin1.jpg" Width="766px" /></center>
</div>
<table>
<tr>
<td style="width: 258px">

<fieldset>
<legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">
    <asp:Image ID="Image3" runat="server" Height="32px" 
        ImageUrl="~/admin images/database-logo.png" Width="51px" />Database Settings</legend>
<table style="width: 285px; height: 156px;">
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
<td style="text-align: left">
    &nbsp;&nbsp;
    <asp:Image ID="Image9" runat="server" Height="34px" 
        ImageUrl="~/admin images/userlogin.jpg" Width="34px" 
        style="text-align: left" />
    <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click" 
        style="text-align: justify; font-weight: bold; font-style: italic;" 
        CausesValidation="False">Login Data</asp:LinkButton></td>
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
<td style="width: 677px">
<table>
<tr>
<td style="height: 55px; width: 3617px">
    
    <asp:Image ID="Image2" runat="server" Height="365px" 
        ImageUrl="~/admin images/admin2.gif" Width="475px" 
        style="margin-right: 3px" />
    
</td>
<td style="height: 55px; width: 303px">
<fieldset style="margin-left: 0px; width: 245px;">
<legend style="font-size: large; font-weight: 700; color: #FFFFFF; background-color: #0099FF">Total Websie Visitores Count</legend>
  <table>
<tr>
<td>
<b>No of Visits:</b>
</td>
<td>
<asp:Label ID="lblCount" runat="server" ForeColor="Red" 
        style="font-weight: 700; font-style: italic; color: #0033CC; font-size: x-large" />
</td>
</tr>
</table>
    </fieldset>
<br />
<br />
<fieldset style="width: 244px">
<legend style="font-size: large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">Today's Date & Time</legend>
<asp:ScriptManager ID="ScriptManager1" runat="server">
       </asp:ScriptManager>
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
           <asp:Timer ID="Timer1" runat="server" Interval="1000">
           </asp:Timer>
   <asp:Label ID="lbltime" runat="server" Text="Label" CssClass="style2" 
               style="font-weight: bold; font-style: italic; font-size: x-large; color: #0099FF"></asp:Label>&nbsp;&nbsp;<asp:Label ID="lbldate"
           runat="server" Text="Label" CssClass="style2" 
               style="font-weight: bold; font-style: italic; font-size: x-large; color: #0099FF"></asp:Label>
           </ContentTemplate>
            </asp:UpdatePanel>
</fieldset>
</td>
</tr>
</table>


   

</td>
</tr>
</table>
</center>
</asp:Content>

