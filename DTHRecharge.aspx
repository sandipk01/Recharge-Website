<%@ Page Title="" Language="C#" MasterPageFile="~/Manage1.master" AutoEventWireup="true" CodeFile="DTHRecharge.aspx.cs" Inherits="DTHRecharge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<table>
    <tr style="font-weight: 700">
    
    <td>
        <asp:Label ID="lblwelcome" runat="server" Text="Welcome:" 
            style="font-weight: 700; font-style: italic; color: #0099FF" 
            Visible="False"></asp:Label></td>
        <td style="width: 55px">
            <asp:Label ID="lbluser" runat="server" Text="User" 
                style="font-weight: 700; font-style: italic; color: #0000CC" 
                Visible="False"></asp:Label>

                 </td><td>
                     <asp:Label ID="wallamount" runat="server" Text="MyWallet:" 
                         style="font-style: italic; color: #0099FF" Visible="False"></asp:Label>   
                     <asp:Label ID="lblwallet" runat="server" 
                         style="color: #0000CC; background-color: #FFFFFF" Visible="False"></asp:Label>
                    &nbsp;</td>
                    <td>
                        <asp:Label ID="rs" runat="server" Text="Rs" 
                            style="font-style: italic; color: #0000CC" Visible="False"></asp:Label>
                    </td>
                    <td>
                <asp:Button ID="btnlogout" runat="server" Text="Logout" Height="26px" 
                    style="font-weight: 700; font-style: italic; color: #0099FF;" Width="57px" 
                    Visible="False" onclick="btnlogout_Click" CausesValidation="False"  /></td>
    </tr>
    </table>
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
        CausesValidation="False" style="font-weight: bold; font-style: italic" >Edit Account Details</asp:LinkButton></td>
</tr>
<center>
<tr><td style="text-align: justify">
    <asp:Image ID="Image2" runat="server" Height="28px" 
        ImageUrl="~/client icon/reccharge.png" Width="39px" />
    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
        CausesValidation="False" style="font-weight: bold; font-style: italic" >Recharge History</asp:LinkButton></td></tr>
<center>
    <tr><td style="height: 23px; text-align: justify;">
        <asp:Image ID="Image3" runat="server" Height="28px" 
            ImageUrl="~/client icon/dth-recharge-one.png" Width="39px" />
        <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click" 
            CausesValidation="False" style="font-weight: bold; font-style: italic">DTH Recharge History</asp:LinkButton></td></tr>
<center>
     <tr><td style="text-align: justify">
         <asp:Image ID="Image4" runat="server" Height="28px" 
             ImageUrl="~/client icon/datacard-2-512.png" Width="39px" />
         <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click" 
             CausesValidation="False" style="font-weight: bold; font-style: italic">Datacard Recharge History</asp:LinkButton></td></tr>
<center>
    <tr><td style="text-align: justify">
        <asp:Image ID="Image5" runat="server" Height="28px" 
            ImageUrl="~/client icon/user-comment-icon.png" Width="39px" />
        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
            CausesValidation="False" style="font-weight: bold; font-style: italic" >View Comment</asp:LinkButton></td></tr>
<center>
        <tr><td style="text-align: justify">
            <asp:Image ID="Image6" runat="server" Height="28px" 
                ImageUrl="~/client icon/Oxygen-Icons.org-Oxygen-Apps-preferences-desktop-user-password.ico" 
                Width="39px" />
            <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" 
                CausesValidation="False" style="font-weight: bold; font-style: italic" >Change Password</asp:LinkButton></td></tr>
<center>
            <tr><td style="text-align: justify">
                <asp:Image ID="Image7" runat="server" Height="28px" 
                    ImageUrl="~/client icon/Phonebook-icon.png" Width="39px" />
                <asp:LinkButton ID="lbphonebook" runat="server" onclick="lbphonebook_Click" 
                    CausesValidation="False" style="font-weight: bold; font-style: italic" >PhoneBook</asp:LinkButton></td></tr>
<center>
                <tr><td style="text-align: justify">
                    <asp:Image ID="Image8" runat="server" Height="28px" 
                        ImageUrl="~/client icon/wallet-xxl.png" Width="39px" />
                    <asp:LinkButton ID="lbaddmoney" runat="server" onclick="lbaddmoney_Click" 
                        CausesValidation="False" style="font-weight: bold; font-style: italic" >Add Money in Wallet</asp:LinkButton></td></tr>
</table>
</fieldset>
<center>
&nbsp;</td>
<td style="width: 515px; height: 173px">
<div style="width: 468px">
<fieldset style="width: 358px">
<legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">ONLINE DTH RECHARGE</legend>

<table style="width: 454px; height: 184px; margin-right: 0px; margin-left: 4px;">
<tr>
<td style="width: 250px; font-style: italic; color: #0099FF;"><i><b>Service Type: 
    </b></i> </td><td style="width: 136px">
    <asp:DropDownList ID="ddlservicetype" runat="server" 
            style="font-weight: bold; font-style: italic; color: #0099FF" 
            AutoPostBack="True">
        <asp:ListItem Value="0">----Select Plz----</asp:ListItem>
        <asp:ListItem Value="1">Mobile Recharge</asp:ListItem>
        <asp:ListItem Value="2">DTH Recharge</asp:ListItem>
        <asp:ListItem Value="3">Data Card</asp:ListItem>
    </asp:DropDownList>
</td>
<td style="width: 196px; text-align: left;">
    &nbsp;</td>
</tr>

<tr>
<td style="width: 250px; font-style: italic; color: #0099FF; height: 52px; background-color: #FFFFFF;">
    <span style="color: rgb(0, 153, 255); font-style: italic; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #FFFFFF;">
    Select DTH Provider:</span></td>
<td style="width: 136px; height: 52px;">
    <asp:DropDownList ID="ddldthp" runat="server" 
        
        
        style="font-weight: bold; font-style: italic; color: #0099FF; margin-left: 2px;" 
        AutoPostBack="True">
        <asp:ListItem Value="0">---Select Plz----</asp:ListItem>
        <asp:ListItem Value="1">AIRTEL DIGITAL TV</asp:ListItem>
        <asp:ListItem Value="2">BIG TV</asp:ListItem>
        <asp:ListItem Value="3">DISH TV</asp:ListItem>
        <asp:ListItem Value="4">SUN TV</asp:ListItem>
        <asp:ListItem Value="5">TATA SKY</asp:ListItem>
        <asp:ListItem Value="6">VIDEOCON D2H</asp:ListItem>
    </asp:DropDownList>
</td>
<td style="width: 196px; height: 52px;">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Select DTH Provider" 
        style="font-weight: bold; font-style: italic; color: #FF0000" 
        ControlToValidate="ddldthp" InitialValue="0"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td style="width: 250px; font-style: italic; color: #0099FF; height: 26px; background-color: #FFFFFF;">
    <span style="color: rgb(0, 153, 255); font-style: italic; font-variant: normal; font-weight: 700; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #FFFFFF;">
    Subscriber Number:</span></td>
<td style="width: 136px; height: 26px;">
    <asp:TextBox ID="txtsubname" runat="server"></asp:TextBox>
</td>
<td style="width: 196px; height: 26px;">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="Enter Subscriber number" 
        style="font-weight: bold; font-style: italic; color: #FF0000" 
        ControlToValidate="txtsubname" Display="Dynamic"></asp:RequiredFieldValidator>
    
<asp:CompareValidator
                ID="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer"
            ErrorMessage="Value must be a whole number" ControlToValidate="txtsubname" 
            Display="Dynamic" 
        style="font-weight: 700; font-style: italic; color: #FF0000"  ></asp:CompareValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        Display="Dynamic" ValidationExpression="[0-9]{10}" 
        ErrorMessage="Enter Valid Number" ControlToValidate="txtsubname" 
        style="font-weight: 700; font-style: italic; color: #FF0000"></asp:RegularExpressionValidator></td>
</tr>
<tr>
<td style="color: #0099FF; width: 250px;"><strong><em>Amount:</em></strong></td>
<td>
    <asp:TextBox ID="txtamount" runat="server"></asp:TextBox></td>
<td style="width: 196px">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ErrorMessage="Enter Amount" 
        style="font-weight: bold; font-style: italic; color: #FF0000" 
        ControlToValidate="txtamount" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator
                ID="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer"
            ErrorMessage="Value must be a whole number" ControlToValidate="txtamount" 
            Display="Dynamic" 
        style="font-weight: 700; font-style: italic; color: #FF0000"  ></asp:CompareValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        Display="Dynamic" ValidationExpression="[0-9]{1,4}" 
        ErrorMessage="Enter Valid Amount" ControlToValidate="txtamount" 
        style="font-weight: 700; font-style: italic; color: #FF0000"></asp:RegularExpressionValidator>

    </td>
</tr>
<tr>
<td style="color: #0099FF; width: 250px;"><strong><em>Payment Option:</em></strong></td><td>
    <asp:DropDownList ID="ddlpayoption" runat="server" AutoPostBack="True">
        <asp:ListItem Value="0">---Select Plz---</asp:ListItem>
        <asp:ListItem Value="1">Easy Wallet</asp:ListItem>
        <asp:ListItem Value="2">Credit card</asp:ListItem>
    </asp:DropDownList>
    </asp:DropDownList>
</td><td style="width: 196px">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="Select Payment Option" 
            style="font-weight: bold; font-style: italic; color: #FF0000" 
            ControlToValidate="ddlpayoption" InitialValue="0"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td style="color: #0099FF; width: 250px;">
    <asp:Label ID="lblcardtype" runat="server" 
        style="font-weight: 700; font-style: italic" Text="Card Type:" Visible="False"></asp:Label>
    </td><td>
    <asp:DropDownList ID="ddlcardtype" runat="server" AutoPostBack="True" 
            Visible="False">
        <asp:ListItem Value="0">---Select Plz----</asp:ListItem>
        <asp:ListItem Value="1">Visa Card</asp:ListItem>
        <asp:ListItem Value="2">Master Card</asp:ListItem>
    </asp:DropDownList>
</td>
<td style="width: 196px">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ErrorMessage="Select Card Type" 
        style="font-weight: bold; font-style: italic; color: #FF0000" 
        ControlToValidate="ddlcardtype" InitialValue="0"></asp:RequiredFieldValidator>
    </td>
</tr>

<td style="width: 250px">
   
    </td>
<td style="width: 136px">
    <asp:ImageButton ID="imgbrecharge" runat="server" Height="49px" 
        ImageUrl="~/recharge images/button recharge.gif" Width="127px" onclick="imgbrecharge_Click" 
       /></td>
    <td style="width: 196px"></td>
</tr>
</table>
</div>

</td>
<td style="width: 187px; height: 173px;">
    <asp:ImageButton ID="ImageButton2" runat="server" Height="265px" 
        ImageUrl="~/advertisments/turnkey.gif" 
        PostBackUrl="https://turnkeyinternet.net/2016/?gclid=CNuI_rm6sMoCFQqhaAodANsJcg" 
        style="margin-left: 0px" Width="273px" />
    </td>
</tr>
</table>
<table>
<tr>
<td colspan="2" style="width: 512px">
<fieldset style="width: 430px">
<legend style="font-weight: 700; font-style: italic; color: #FFFFFF; font-size: x-large; background-color: #0099FF">
    DTH recharge 
    help</legend>

        <b style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(241, 241, 249);">
    <em><span style="font-size: small">Dish TV</span></em></b><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><span 
        class="Apple-converted-space" style="font-weight: bold; font-size: small"><em>&nbsp;</em></span></span><span 
        style="color: rgb(0, 0, 0); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><em 
        style="color: #0099FF">- subscriber: Enter 11 digit Viewing Card No. which 
    starts with 0.</em></span><em><br 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(241, 241, 249);" />
    </em>
    <b style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(241, 241, 249);">
    <em><span style="font-size: small">Sun Direct</span></em></b><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><span 
        class="Apple-converted-space" style="font-weight: bold; font-size: small"><em>&nbsp;</em></span></span><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><em>- 
    subscriber: Enter 11 digit Smart Card Number.</em></span><em><br 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(241, 241, 249);" />
    </em>
    <b style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(241, 241, 249);">
    <em><span style="font-size: small">Big TV</span></em></b><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><span 
        class="Apple-converted-space" style="font-weight: bold; font-size: small"><em>&nbsp;</em></span></span><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><em>- 
    subscriber: Enter 12 digit Smart Card Number.</em></span><em><br 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(241, 241, 249);" />
    </em>
    <b style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(241, 241, 249);">
    <em><span style="font-size: small">Airtel Digital TV</span></em></b><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><span 
        class="Apple-converted-space" style="font-weight: bold; font-size: small"><em>&nbsp;</em></span></span><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><em>- 
    subscriber: Enter 10 digit Customer ID which starts with 3.</em></span><em><br 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(241, 241, 249);" />
    </em>
    <b style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(241, 241, 249);">
    <em><span style="font-size: small">Tata Sky</span></em></b><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><span 
        class="Apple-converted-space" style="font-weight: bold; font-size: small"><em>&nbsp;</em></span></span><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><em>- 
    subscriber: Enter 10 digit Subscriber Id.</em></span><em><br 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(241, 241, 249);" />
    </em>
    <b style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(241, 241, 249);">
    <em><span style="font-size: small">Videocon D2H</span></em></b><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><span 
        class="Apple-converted-space" style="font-weight: bold; font-size: small"><em>&nbsp;</em></span></span><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><em>- 
    subscriber: Enter Customer Id. Customer ID is different from smart card no. SMS 
    ID from your Registered Mobile No. to 9212012299 or 566777 to get the Customer 
    Id through SMS.</em></span><br />

</center>
</fieldset>
</td>
<td>

    <asp:ImageButton ID="ImageButton3" runat="server" Height="104px" 
        ImageUrl="~/advertisments/mediatek.gif"  
        style="margin-left: 0px" Width="447px" />

</td>
</tr>
</table>
</fieldset>
</center>

</center>

</center>

</center>

</center>

</center>

</center>

</center>

</body>
</html>

</asp:Content>

