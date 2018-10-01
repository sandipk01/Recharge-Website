<%@ Page Title="" Language="C#" MasterPageFile="~/Manage1.master" AutoEventWireup="true" CodeFile="DataCardRecharge1.aspx.cs" Inherits="DataCardRecharge1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table>
<tr>
<td>
    <asp:Label ID="lblwelcome" runat="server" Text="Welcome:" Visible="False" 
        style="font-weight: bold; font-style: italic; color: #0099FF"></asp:Label></td><td>
        <asp:Label ID="lbluser" runat="server" Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0000CC"></asp:Label></td>
        <td>
            <asp:Label ID="wallamount" runat="server" Text="MyWallet:" 
                style="font-weight: bold; font-style: italic; color: #0099FF" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblwallet" runat="server" 
                style="font-weight: bold; font-style: italic; color: #0000CC" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:Label ID="rs" runat="server" Text="Rs" 
                style="font-weight: bold; font-style: italic; color: #0000CC" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:Button ID="btnlogout" runat="server" Text="Logout" 
                onclick="btnlogout_Click" Visible="False" 
                style="font-weight: bold; font-style: italic; color: #0099FF;" 
                CausesValidation="False" /></td>
</tr>
</table>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
<body>
<br />
<div>
   <marquee direction="left" scrollamount="5"  onmouseover="this.stop();" 
        onmouseout="this.start();" 
        style="font-weight: 700; font-style: italic; color: #0099FF; background-color: #FFFFFF"> <asp:LinkButton ID="LinkButton6" runat="server">Now Get Free Coupons and Discounts on Top Brands with every Recharge on EasyMobileRecharge.com More Details
</asp:LinkButton></marquee></div><br />
<center>
<table>
<tr >
<td rowspan="2" style="width: 266px; height: 198px">
<fieldset style="width: 297px; margin-right: 0px; height: 427px;">
<legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #0099FF">ONILE RECHARGE</legend>
<table style="height: 126px; width: 258px">
<tr>
<td style="width: 200px; height: 23px; font-style: italic; color: #0099FF; font-weight: bold;">
    <i><b>Oprator:</b></i></td>
    <td style="width: 34px; height: 23px;">
    <asp:Label ID="lbloprator" runat="server" 
            style="font-weight: bold; font-style: italic; color: #0066FF"></asp:Label></td>
</tr>
<tr>
<td style="width: 200px; font-style: italic; color: #0099FF; font-weight: bold;"><i>
    <b>Data Card Number:</b></i></td>
<td style="width: 34px">
    <asp:Label ID="lbldatacardno" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0066FF"></asp:Label></td>
</tr>
<tr><td style="font-style: italic; font-weight: bold; color: #0099FF"><i><b>Circle:</b></i></td><td>
    <asp:Label ID="lblcircle" runat="server" 
        style="color: #0000FF; font-weight: 700; font-style: italic" Text="Label"></asp:Label>
    </td></tr>
<tr>
<td style="width: 200px; font-style: italic; color: #0099FF;"><b>Amount:</b></td><td style="width: 34px">
    <asp:Label ID="lblamount" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0066FF"></asp:Label></td>
</tr>
<tr>
<td style="width: 200px; font-style: italic; color: #0099FF;"><b>Payment Option</b></td><td style="width: 34px">
    <asp:Label ID="lblpayoption" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0066FF"></asp:Label></td>
</tr>
</table>
<br />
<div style="font-size: large"><strong><em>
    <span style="color: #FFFFFF; background-color: #0099FF">Please agree to the following</span></em></strong></div><br />
    <asp:CheckBox ID="CheckBox1" runat="server" 
        Text="I Agree to Terms and Conditions" 
        style="font-weight: bold; font-style: italic; color: #0099FF" 
        oncheckedchanged="CheckBox1_CheckedChanged" /><br />
    <asp:CheckBox ID="CheckBox2" runat="server" 
        Text="I have entered a valid and correct number" 
        style="font-weight: bold; font-style: italic; color: #0099FF" />
    <br />
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="1000">
            </asp:Timer>
            <asp:Label ID="lbltime" runat="server" Text="Label" Visible="False"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbldate" runat="server" Text="Label" 
                Visible="False"></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
<br />
  <center>  <asp:Button ID="btnproceed" runat="server" Text="proceed" 
        onclick="btnproceed_Click" 
          style="font-weight: bold; font-style: italic; color: #0099FF" />
      <asp:Button ID="btncancel" runat="server" Text="Cancel" 
          onclick="btncancel_Click" 
          style="font-weight: bold; font-style: italic; color: #0099FF" 
          CausesValidation="False" />
      <br />
      <asp:Label ID="lblsubstract" runat="server" Visible="False"></asp:Label>
      <asp:Label ID="lblsuc" runat="server" Text="successful" Visible="False"></asp:Label>
      <asp:Label ID="lblunsuc" runat="server" Text="Unsuccessful" Visible="False"></asp:Label>
    </center>
</fieldset>
</td>
<td style="width: 270px; height: 198px;">
 
  <asp:AdRotator ID="AdRotator1" Width="262px" Height="350px" runat="server" 
        DataSourceID="XmlDataSourceRech3add" />
 

    <asp:XmlDataSource ID="XmlDataSourceRech3add" runat="server" 
        DataFile="~/rech3xmladd.xml"></asp:XmlDataSource>
 
</td>
<td style="width: 233px; height: 198px;">


    <asp:ImageButton ID="ImageButton1" runat="server" Height="186px" 
        ImageUrl="~/advertisments/askme.png" 
        Width="262px" />


    <br />
    <br />
    <asp:ImageButton ID="ImageButton2" runat="server" Height="180px" 
        ImageUrl="~/advertisments/turnkey.gif" 
        style="margin-left: 0px" Width="261px" />


</td>

</tr>

</table>
</center>
</body>
</html>

</asp:Content>

