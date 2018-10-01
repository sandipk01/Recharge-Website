<%@ Page Title="" Language="C#" MasterPageFile="~/Manage1.master" AutoEventWireup="true" CodeFile="DataCardRecharge.aspx.cs" Inherits="DataCardRecharge" %>

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
                         style="font-style: italic; color: #0099FF"></asp:Label>   
                     <asp:Label ID="lblwallet" runat="server" 
                         style="color: #0000CC; background-color: #FFFFFF" Visible="False"></asp:Label>
                    &nbsp;</td>
                    <td>
                        <asp:Label ID="rs" runat="server" Text="Rs" 
                            style="font-style: italic; color: #0000CC"></asp:Label>
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
<table style="width: 1051px">
<tr>
<td style="height: 173px; width: 227px;">
<div style="width: 276px">
<fieldset style="width: 229px">
<legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #0099FF">Data Settings</legend>
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
        <tr><td style="height: 23px; text-align: justify;">
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
</fieldset><center>
&nbsp;</td>
<td style="width: 435px; height: 173px">
<div style="width: 446px; margin-right: 3px;">
<fieldset style="width: 358px">
<legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">
    ONLINE DATACARD RECHARGE</legend>
<table style="width: 425px; height: 184px; margin-right: 0px; margin-left: 2px;">
<tr>
<td style="width: 116px; font-style: italic; color: #0099FF;"><i><b>Service Type: 
    </b></i> </td><td style="width: 94px">
    <asp:DropDownList ID="ddlservicetype" runat="server" 
            style="font-weight: bold; font-style: italic; color: #0099FF" 
            AutoPostBack="True" Height="16px" Width="115px">
        <asp:ListItem Value="0">----Select Plz----</asp:ListItem>
        <asp:ListItem Value="1">Mobile Recharge</asp:ListItem>
        <asp:ListItem Value="2">DTH Recharge</asp:ListItem>
        <asp:ListItem Value="3">Data Card</asp:ListItem>
    </asp:DropDownList>
</td>
<td style="width: 152px">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="ddlservicetype" ErrorMessage="Select The Service Type" 
        InitialValue="3" 
        
        style="font-weight: bold; font-style: italic; color: #FF0000; text-align: left"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr>
<td style="width: 116px; font-style: italic; color: #0099FF; height: 52px; background-color: #FFFFFF;">
    <b>Operato</b><span 
        
        style="font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">r:</span></td>
<td style="width: 94px; height: 52px;">
    <asp:DropDownList ID="ddloperator" runat="server" 
        
        
        style="font-weight: bold; font-style: italic; color: #0099FF; margin-left: 2px;" 
        AutoPostBack="True">
        <asp:ListItem Value="0">---Select Plz----</asp:ListItem>
        <asp:ListItem Value="1">TATA PHOTON</asp:ListItem>
        <asp:ListItem Value="2">MTS</asp:ListItem>
        <asp:ListItem Value="3">RELINCE</asp:ListItem>
        <asp:ListItem Value="4">BSNL</asp:ListItem>
        <asp:ListItem Value="5">VODAPHONE</asp:ListItem>
        <asp:ListItem Value="6">AIRTEL</asp:ListItem>
    </asp:DropDownList>
</td>
<td style="width: 152px; height: 52px;">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="ddloperator" ErrorMessage="Select Operator" InitialValue="0" 
        style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td style="width: 116px; font-style: italic; color: #0099FF; height: 26px; background-color: #FFFFFF;">
    <b>DataCard N</b><span 
        
        style="font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-right; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">umber:</span></td>
<td style="width: 94px; height: 26px;">
    <asp:TextBox ID="txtdatacno" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
</td>
<td style="width: 152px; height: 26px;">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtdatacno" ErrorMessage="Plz Enter The Number" 
        style="font-weight: bold; font-style: italic; color: #FF0000" 
        Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        Display="Dynamic" ValidationExpression="[0-9]{10}" 
        ErrorMessage="The Number Must Be 10 Digits" ControlToValidate="txtdatacno" 
        style="font-weight: 700; font-style: italic; color: #FF0000"></asp:RegularExpressionValidator>
        <asp:CompareValidator
                ID="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer"
            ErrorMessage="Value must be a whole number" ControlToValidate="txtdatacno" 
            Display="Dynamic" 
        style="font-weight: 700; font-style: italic; color: #FF0000" ></asp:CompareValidator>
        </td>
</tr>

<tr>
<td style="color: #0099FF; font-style: italic; width: 116px;"><i><b>Circle:</b></i></td>
<td style="width: 94px">
    <asp:DropDownList ID="ddlcircle" runat="server" AutoPostBack="True" 
        style="font-weight: bold; font-style: italic; color: #0099FF">
        <asp:ListItem Value="0">---Select Plz---</asp:ListItem>
        <asp:ListItem Value="1">Mumbai &amp; Goa</asp:ListItem>
        <asp:ListItem Value="2">Gujrath</asp:ListItem>
        <asp:ListItem Value="3">chennai</asp:ListItem>
    </asp:DropDownList>
    </td>
<td style="width: 152px">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="ddlcircle" ErrorMessage="Select The Circle" InitialValue="0" 
        style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr>
<td style="width: 116px; height: 26px;"><strong><em style="color: #0099FF">Amount:</em></strong></td>
<td style="width: 94px; height: 26px;">
    <asp:TextBox ID="txtamount" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox></td>
<td style="width: 152px; height: 26px;">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="txtamount" ErrorMessage="Plz Enter The Amount" 
        style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
        <asp:CompareValidator
                ID="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer"
            ErrorMessage="Amount must be a whole number" ControlToValidate="txtamount" 
            Display="Dynamic" 
        style="font-weight: 700; font-style: italic; color: #FF0000"  ></asp:CompareValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        Display="Dynamic" ValidationExpression="[0-9]{1,3}" 
        ErrorMessage="Enter Valid Amount" ControlToValidate="txtamount" 
        style="font-weight: 700; font-style: italic; color: #FF0000"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td style="color: #0099FF; width: 116px;"><strong><em>Payment Option:</em></strong></td>
    <td style="width: 94px">
    <asp:DropDownList ID="ddlpayoption" runat="server" AutoPostBack="True" 
            style="font-weight: bold; font-style: italic; color: #0099FF">
        <asp:ListItem Value="0">---Select Plz---</asp:ListItem>
        <asp:ListItem Value="1">Easy Wallet</asp:ListItem>
        <asp:ListItem Value="2">Credit card</asp:ListItem>
    </asp:DropDownList>
    </asp:DropDownList>
</td><td style="width: 152px">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="ddlpayoption" ErrorMessage="Select The Payment Option" 
            InitialValue="0" style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td style="color: #0099FF; width: 116px;">
    <asp:Label ID="lblcardtype" runat="server" 
        style="font-weight: 700; font-style: italic" Text="Card Type:" Visible="False"></asp:Label>
    </td><td style="width: 94px">
    <asp:DropDownList ID="ddlcardtype" runat="server" AutoPostBack="True" 
            Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0099FF">
        <asp:ListItem Value="0">---Select Plz----</asp:ListItem>
        <asp:ListItem Value="1">Visa Card</asp:ListItem>
        <asp:ListItem Value="2">Master Card</asp:ListItem>
    </asp:DropDownList>
</td>
<td style="width: 152px">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="ddlcardtype" ErrorMessage="Select The Card Type" 
        InitialValue="0" style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    </td>
</tr>

<td style="width: 116px">
   
    </td>
<td style="width: 94px">
    <asp:ImageButton ID="imgbrecharge" runat="server" Height="49px" 
        ImageUrl="~/recharge images/button recharge.gif" Width="127px" onclick="imgbrecharge_Click" 
       /></td>
    <td style="width: 152px"></td>
</tr>
</table>
</fieldset>
</div>

</td>
<td style="width: 187px; height: 173px; text-align: justify;">
    <asp:ImageButton ID="ImageButton2" runat="server" Height="265px" 
        ImageUrl="~/advertisments/turnkey.gif" 
        PostBackUrl="https://turnkeyinternet.net/2016/?gclid=CNuI_rm6sMoCFQqhaAodANsJcg" 
        style="margin-left: 0px" Width="273px" />
    </td>
</tr>
</table>
<table>
<tr>
<td colspan="2" style="width: 512px; text-align: left;">
<fieldset style="width: 430px">
<legend style="font-weight: 700; font-style: italic; color: #FFFFFF; font-size: x-large; background-color: #0099FF">
    DataCard Recharge 
    help</legend>

        <div style="text-align: center">
            <span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><span 
        class="Apple-converted-space" style="font-weight: bold; font-size: small"><em>
            <span style="background-color: #FFFFFF">DataCard&nbsp;</span></em></span></span><em><br 
        
                style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #FFFFFF;" />
            <span style="color: rgb(0, 153, 255)"><b>
            <span style="background-color: #FFFFFF">Operator</span></b></span></em><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><em><span 
                style="background-color: #FFFFFF">- 
            Select Operator eg,idea,airtle,tatadocomo,</span></em></span><em><br 
        
                style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #FFFFFF;" />
            <span style="color: rgb(0, 153, 255)"><b>
            <span style="background-color: #FFFFFF">Data Card Number</span></b></span></em><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><em><span 
                style="background-color: #FFFFFF">- Data Card number Mean mobile no enter 
            like 10 digits.</span></em></span><em><br 
        
                style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #FFFFFF;" />
            <span style="color: rgb(0, 153, 255)"><b>
            <span style="background-color: #FFFFFF">Circle</span></b></span></em><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><span 
        class="Apple-converted-space" style="font-weight: bold; font-size: small"><em><span 
                style="background-color: #FFFFFF">&nbsp;</span></em></span></span><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><em><span 
                style="background-color: #FFFFFF">- 
            Select City or your Circle.</span></em></span><em><br 
        
                style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #FFFFFF;" />
            <span style="color: rgb(0, 153, 255)"><b>
            <span style="background-color: #FFFFFF">Amount</span></b></span></em><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><em><span 
                style="background-color: #FFFFFF">- 
            Enter The Recharge Amount.</span></em></span><em><br 
        
                style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #FFFFFF;" />
            <span style="color: rgb(0, 153, 255)"><b>
            <span style="background-color: #FFFFFF">Select The Payment Option</span></b></span></em><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><span 
        class="Apple-converted-space" style="font-weight: bold; font-size: small"><em><span 
                style="background-color: #FFFFFF">&nbsp;</span></em></span></span><span 
        style="color: rgb(0, 153, 255); font-family: Tahoma, Verdana, Arial; font-size: small; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(241, 241, 249);"><em><span 
                style="background-color: #FFFFFF">-Select Payment Option like Credit card or 
            Used Easy Wallet. </span>
            <br style="background-color: #FFFFFF" />
            <br style="background-color: #FFFFFF" />
            <span style="background-color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Customer ID is different from smart card no. SMS 
    ID from your Registered Mobile No. to 9212012299 or 566777 to get the Customer 
    Id through SMS.</span></em></span><br />

</center>
    </div>
</fieldset><center>
<center>
<center>
<center>
<center>
<center>
<center>
&nbsp;</td>
<center>
<center>
<center>
<center>
<center>
<center>
<center>
<td>

    <asp:ImageButton ID="ImageButton3" runat="server" Height="104px" 
        ImageUrl="~/advertisments/mediatek.gif"  
        style="margin-left: 0px" Width="447px" />

</td>
</tr>
</table>

</asp:Content>

