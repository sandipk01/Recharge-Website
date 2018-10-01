<%@ Page Title="" Language="C#" MasterPageFile="~/Manage1.master" AutoEventWireup="true" CodeFile="Manage.aspx.cs" Inherits="Manage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<html>
<body>
<table>
<tr>
<td style="width: 48px; height: 32px;">
    <asp:Label ID="lblwelcome" runat="server" Text="Welcome:" 
        style="font-weight: 700; font-style: italic; color: #0099FF" Visible="False"></asp:Label></td>
    <td style="width: 41px; height: 32px;">
        <asp:Label ID="lbluser" runat="server" Text="Label" style="color: #0000CC; font-weight: 700; font-style: italic;" 
            Visible="False"></asp:Label></td>
            <td style="height: 32px">
                <asp:Label ID="wallamount" runat="server" Text="wallet Amout:" 
                    style="font-weight: 700; font-style: italic; color: #0099FF" Visible="False"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:Label ID="lblwallet" runat="server" 
                    style="font-weight: bold; font-style: italic; color: #0000CC" Visible="False"></asp:Label>
            </td>
            <td style="height: 32px">
                <asp:Label ID="rs" runat="server" Text="Rs" 
                    style="font-weight: bold; font-style: italic; color: #0000CC" Visible="False"></asp:Label>
            </td>
        <td style="height: 32px">
            <asp:Button ID="btnlogout" runat="server" Text="Logout" Height="28px" 
                onclick="btnlogout_Click" style="color: #0099FF" Visible="False" 
                Width="52px" CausesValidation="False" /></td>
</tr>
</table>
</body>
</html>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>
<body>
<center>
<br />
<div>
   <marquee direction="left" scrollamount="5"  onmouseover="this.stop();" 
        onmouseout="this.start();" 
        style="font-weight: 700; font-style: italic; color: #0099FF; background-color: #FFFFFF"> <asp:LinkButton ID="LinkButton6" runat="server">Now Get Free Coupons and Discounts on Top Brands with every Recharge on EasyMobileRecharge.com More Details
</asp:LinkButton></marquee></div><br />
<table>
<tr>
<td style="height: 173px; width: 227px;">
<div style="width: 276px">
<fieldset style="width: 229px">
<legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #0099FF">Data Settings</legend>
</center>

<table style="width: 234px; height: 177px;">
<tr>
<td style="height: 26px; text-align: justify;">
    <asp:Image ID="Image1" runat="server" Height="28px" 
        ImageUrl="~/client icon/edit-notes.png" Width="39px" />
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
        CausesValidation="False" style="font-style: italic; font-weight: bold">Edit Account Details</asp:LinkButton></td>
</tr>
<center>
<tr><td style="text-align: justify">
    <asp:Image ID="Image2" runat="server" Height="28px" 
        ImageUrl="~/client icon/reccharge.png" Width="39px" />
    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
        CausesValidation="False" style="font-style: italic; font-weight: bold">Mobile Recharge History</asp:LinkButton></td></tr>
<center>
    <tr><td style="height: 23px; text-align: justify;">
        <asp:Image ID="Image3" runat="server" Height="28px" 
            ImageUrl="~/client icon/dth-recharge-one.png" Width="39px" />
        <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click" 
            CausesValidation="False" style="font-style: italic; font-weight: bold">DTH Recharge History</asp:LinkButton></td></tr>
<center>
     <tr><td style="text-align: justify">
         <asp:Image ID="Image4" runat="server" Height="28px" 
             ImageUrl="~/client icon/datacard-2-512.png" Width="39px" />
         <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click" 
             CausesValidation="False" style="font-style: italic; font-weight: bold">Datacard Recharge History</asp:LinkButton></td></tr>
    <tr><td style="text-align: justify">
        <asp:Image ID="Image5" runat="server" Height="28px" 
            ImageUrl="~/client icon/user-comment-icon.png" Width="39px" />
        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
            CausesValidation="False" style="font-style: italic; font-weight: bold">View Comment</asp:LinkButton></td></tr>
        <tr><td style="text-align: justify">
            <asp:Image ID="Image6" runat="server" Height="28px" 
                ImageUrl="~/client icon/Oxygen-Icons.org-Oxygen-Apps-preferences-desktop-user-password.ico" 
                Width="39px" />
            <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" 
                CausesValidation="False" style="font-style: italic; font-weight: bold">Change Password</asp:LinkButton></td></tr>
<center>
            <tr><td style="text-align: justify">
                <asp:Image ID="Image7" runat="server" Height="28px" 
                    ImageUrl="~/client icon/Phonebook-icon.png" Width="39px" />
                <asp:LinkButton ID="lbphonebook" runat="server" onclick="lbphonebook_Click" 
                    CausesValidation="False" style="font-style: italic; font-weight: bold">PhoneBook</asp:LinkButton></td></tr>
<center>
                <tr><td style="text-align: justify">
                    <asp:Image ID="Image8" runat="server" Height="28px" 
                        ImageUrl="~/client icon/wallet-xxl.png" Width="39px" />
                    <asp:LinkButton ID="lbaddmoney" runat="server" onclick="lbaddmoney_Click" 
                        CausesValidation="False" style="font-style: italic; font-weight: bold">Add Money in Wallet</asp:LinkButton></td></tr>
</table>
</fieldset><center>
&nbsp;</td>
<td style="width: 418px; height: 173px">
    
<div style="width: 400px">
<fieldset style="width: 384px">
<legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">&nbsp;ON&nbsp;ONLINE MOBILE RECHARGE</legend>
<table style="width: 363px; height: 184px; margin-right: 1px; margin-left: 1px;">
<tr>
<td style="width: 152px; font-style: italic; color: #0099FF;"><i><b>Service Type: 
    </b></i> </td><td style="width: 126px">
    <asp:DropDownList ID="ddlservicetype" runat="server" 
            style="font-weight: bold; font-style: italic; color: #0099FF" 
            AutoPostBack="True">
        <asp:ListItem Value="0">---Select---</asp:ListItem>
        <asp:ListItem Value="1">Mobile Recharge</asp:ListItem>
        <asp:ListItem Value="2">DTH Recharge</asp:ListItem>
        <asp:ListItem Value="3">Data Card</asp:ListItem>
    </asp:DropDownList>
</td>
<td style="width: 144px">&nbsp;</td>
</tr>
<tr>
<td style="width: 152px; font-style: italic; color: #0099FF; height: 26px;">
    <i><b>Mobile Number: 
</b></i> 
</td>
<td style="width: 126px; height: 26px;">
    <asp:TextBox ID="txtmobino" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox></td>
    <td style="width: 144px; height: 26px;">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Enter The Mobile Number" 
            style="font-style: italic; font-weight: bold; color: #FF0000" 
            ControlToValidate="txtmobino" Display="Dynamic"></asp:RequiredFieldValidator>
<asp:CompareValidator
                ID="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer"
            ErrorMessage="Value must be a whole number" ControlToValidate="txtmobino" 
            Display="Dynamic" 
        style="font-weight: 700; font-style: italic; color: #FF0000"  ></asp:CompareValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        Display="Dynamic" ValidationExpression="[0-9]{10}" 
        ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtmobino" 
        style="font-weight: 700; font-style: italic; color: #FF0000"></asp:RegularExpressionValidator>

    </td>
</tr>
<tr>
<td style="width: 152px; font-style: italic; color: #0099FF;"><i><b>Operator: </b>
    </i> </td>
<td style="width: 126px">
    <asp:DropDownList ID="ddlopetator" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0099FF" 
        AutoPostBack="True">
        <asp:ListItem Value="0">---Select---</asp:ListItem>
        <asp:ListItem Value="1">Aircel</asp:ListItem>
        <asp:ListItem Value="2">Airtel</asp:ListItem>
        <asp:ListItem Value="3">Bsnl</asp:ListItem>
        <asp:ListItem Value="4">Dolphine</asp:ListItem>
        <asp:ListItem Value="5">Idea</asp:ListItem>
        <asp:ListItem Value="6">Vodafone</asp:ListItem>
    </asp:DropDownList>
</td>
<td style="width: 144px">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="Select Operator" 
        style="font-style: italic; font-weight: bold; color: #FF0000" 
        ControlToValidate="ddlopetator" InitialValue="0"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td style="width: 152px; font-style: italic; color: #0099FF;">
    <i><b>Circle: 
</b></i> 
</td>
<td style="width: 126px">
    <asp:DropDownList ID="ddlcircle" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0099FF" 
        AutoPostBack="True">
        <asp:ListItem Value="0">---Select---</asp:ListItem>
        <asp:ListItem>Mumbai &amp; Goa</asp:ListItem>
    </asp:DropDownList>
</td>
<td style="width: 144px">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ErrorMessage="Select Operator" 
        style="font-style: italic; font-weight: bold; color: #FF0000" 
        ControlToValidate="ddlcircle" InitialValue="0"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td style="width: 152px">
   
    </td>
<td style="width: 126px">
    <asp:ImageButton ID="ImageButton1" runat="server" Height="49px" 
        ImageUrl="~/recharge images/button recharge.gif" Width="127px" 
        onclick="ImageButton1_Click" /></td>
    <td style="width: 144px"></td>
</tr>
</table>
</fieldset>
</div>

</td>
<td style="width: 187px; height: 173px;">
    <asp:ImageButton ID="ImageButton2" runat="server" Height="265px" 
        ImageUrl="~/advertisments/turnkey.gif" onclick="ImageButton2_Click" 
        PostBackUrl="https://turnkeyinternet.net/2016/?gclid=CNuI_rm6sMoCFQqhaAodANsJcg" 
        style="margin-left: 0px" Width="273px" />
    </td>
</tr>
</table>
<table>
<tr>
<td colspan="2" style="width: 814px">
<fieldset style="width: 430px">
<legend style="font-weight: 700; font-style: italic; color: #FFFFFF; font-size: x-large; background-color: #0099FF; width: 394px;">mobile recharge 
    help</legend>

        <strong><em><span style="color: #0099FF; background-color: #FFFFFF">Follow these simple steps to recharge: 
    </span> <br style="color: #0099FF; background-color: #FFFFFF" />

    <span style="color: #0099FF; background-color: #FFFFFF">1.	Enter Mobile No. / Subscriber ID</span><br 
        style="color: #0099FF; background-color: #FFFFFF" />
    <span style="color: #0099FF; background-color: #FFFFFF">2.	Enter your Recharge / E-Top Up Amount 
    </span> <br style="color: #0099FF; background-color: #FFFFFF" />
    <span style="color: #0099FF; background-color: #FFFFFF">3.	Select your Login Type (Login or Guest)</span><br 
        style="color: #0099FF; background-color: #FFFFFF" /> 
    <span style="color: #0099FF; background-color: #FFFFFF">4.	Select the payment option, make payment & get your recharge instantly</span></em></strong><br />
</center>
</fieldset>
</td>
<td>

    <asp:ImageButton ID="ImageButton3" runat="server" Height="104px" 
        ImageUrl="~/advertisments/mediatek.gif" onclick="ImageButton3_Click" 
        style="margin-left: 1px" Width="447px" />

</td>
</tr>
</table>
</center>

</center>

</center>

</center>

</center>

</center>

</body>
</html>
</asp:Content>

