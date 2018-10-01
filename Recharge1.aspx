<%@ Page Title="" Language="C#" MasterPageFile="~/Account.master" AutoEventWireup="true" CodeFile="Recharge1.aspx.cs" Inherits="Recharge1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<table>
<tr>
<td style="height: 30px">
    <asp:Label ID="lblwelcome" runat="server" Text="Welcome:" 
        style="font-weight: bold; font-style: italic; color: #0099FF;"></asp:Label>
</td>
<td style="height: 30px">
    <asp:Label ID="lbluser" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0000CC;"></asp:Label>
</td>
<td>
    <asp:Label ID="wallamount" runat="server" Text="MyWallet:" 
        style="font-weight: bold; font-style: italic; color: #0099FF"></asp:Label>
</td>
<td>
    <asp:Label ID="lblwallet" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0000CC"></asp:Label>
</td>
<td>
    <asp:Label ID="rs" runat="server" Text="Rs" 
        style="font-weight: bold; font-style: italic; color: #0000CC"></asp:Label>
</td>
<td style="height: 30px">
    <asp:Button ID="btnlogout" runat="server" CausesValidation="False" 
        style="font-style: italic; font-weight: 700; color: #00CCFF" Text="Logout" />
    </td>
</tr>
</table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
<body><center>
<table>
<tr>

<td style="width: 338px">
<fieldset>
<legend style="font-weight: 700; font-size: x-large; font-style: italic; color: #FFFFFF; background-color: #0099FF">Account Setting</legend>

<table style="width: 234px; height: 177px;">
<tr>
<td style="height: 26px; text-align: justify;">
    <asp:Image ID="Image1" runat="server" Height="28px" 
        ImageUrl="~/client icon/edit-notes.png" Width="39px" />
    <asp:LinkButton ID="LinkButton19" runat="server" CausesValidation="False" 
        style="font-weight: bold; font-style: italic" >Edit Account Details</asp:LinkButton></td>
</tr>
<center>
<tr><td style="text-align: justify">
    <asp:Image ID="Image2" runat="server" Height="28px" 
        ImageUrl="~/client icon/reccharge.png" Width="39px" />
    <asp:LinkButton ID="LinkButton20" runat="server" CausesValidation="False" 
        style="font-weight: bold; font-style: italic" >Mobile Recharge History</asp:LinkButton></td></tr>
<center>
    <tr><td style="height: 23px; text-align: justify;">
        <asp:Image ID="Image3" runat="server" Height="28px" 
            ImageUrl="~/client icon/dth-recharge-one.png" Width="39px" />
        <asp:LinkButton ID="LinkButton21" runat="server" CausesValidation="False" 
            style="font-weight: bold; font-style: italic" >DTH Recharge History</asp:LinkButton></td></tr>
<center>
     <tr><td style="text-align: justify">
         <asp:Image ID="Image4" runat="server" Height="28px" 
             ImageUrl="~/client icon/datacard-2-512.png" Width="39px" />
         <asp:LinkButton ID="LinkButton22" runat="server" CausesValidation="False" 
             style="font-weight: bold; font-style: italic" >Datacard Recharge History</asp:LinkButton></td></tr>
    <tr><td style="text-align: justify">
        <asp:Image ID="Image5" runat="server" Height="28px" 
            ImageUrl="~/client icon/user-comment-icon.png" Width="39px" />
        <asp:LinkButton ID="LinkButton23" runat="server" CausesValidation="False" 
            style="font-weight: bold; font-style: italic" >View Comment</asp:LinkButton></td></tr>
        <tr><td style="text-align: justify">
            <asp:Image ID="Image6" runat="server" Height="28px" 
                ImageUrl="~/client icon/Oxygen-Icons.org-Oxygen-Apps-preferences-desktop-user-password.ico" 
                Width="39px" />
            <asp:LinkButton ID="LinkButton24" runat="server" CausesValidation="False" 
                style="font-weight: bold; font-style: italic" >Change Password</asp:LinkButton></td></tr>
<center>
            <tr><td style="text-align: justify">
                <asp:Image ID="Image7" runat="server" Height="28px" 
                    ImageUrl="~/client icon/Phonebook-icon.png" Width="39px" />
                <asp:LinkButton ID="lbphonebook" runat="server" CausesValidation="False" 
                    style="font-weight: bold; font-style: italic" >PhoneBook</asp:LinkButton></td></tr>
<center>
                <tr><td style="text-align: justify">
                    <asp:Image ID="Image8" runat="server" Height="28px" 
                        ImageUrl="~/client icon/wallet-xxl.png" Width="39px" />
                    <asp:LinkButton ID="lbaddmoney" runat="server" CausesValidation="False" 
                        style="font-weight: bold; font-style: italic" >Add Money in Wallet</asp:LinkButton></td></tr>
</table>

</fieldset>
</td>
<td style="width: 723px">
<fieldset style="width: 325px">
<legend style="font-size: x-large"><strong><em>
    <span style="color: #FFFFFF; background-color: #0099FF">ONLINE RECHARGE</span></em></strong></legend>
<table>
<tr>
<td style="font-weight: 700; font-style: italic; color: #0099FF">
Amount(Rs):</td><td>
    <asp:TextBox ID="txtamount" runat="server" 
            style="font-weight: bold; font-style: italic; color: #0099FF" 
            Height="27px" Width="121px"></asp:TextBox></td><td style="width: 117px">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtamount" ErrorMessage="Enter Amount" 
            style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    
<asp:CompareValidator
                ID="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer"
            ErrorMessage="Value must be a whole number" ControlToValidate="txtamount" 
            Display="Dynamic" 
        style="font-weight: 700; font-style: italic; color: #FF0000"  ></asp:CompareValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        Display="Dynamic" ValidationExpression="[0-9]{1,4}" 
        ErrorMessage="Enter Valid  Amount" ControlToValidate="txtamount" 
        style="font-weight: 700; font-style: italic; color: #FF0000"></asp:RegularExpressionValidator></td>
</tr>
</table>
<br />
<div style="font-weight: 700; font-style: italic; color: #FFFFFF; font-size: large; background-color: #0099FF">Select Payment Option</div>
    <br />
    <asp:DropDownList ID="ddlpay" runat="server" AutoPostBack="True" 
        style="font-weight: bold; font-style: italic; color: #0099FF">
        <asp:ListItem Value="0">---Select---</asp:ListItem>
        <asp:ListItem Value="1">Easy Wallet </asp:ListItem>
        <asp:ListItem Value="2">Credit Card</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="ddlpay" ErrorMessage="Select Payment Option" 
        InitialValue="0" style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:DropDownList ID="ddlnetbanking" runat="server" 
        Visible="False" AutoPostBack="True" 
        style="font-weight: bold; font-style: italic; color: #0099FF">
        <asp:ListItem Value="0">---Select---</asp:ListItem>
        <asp:ListItem Value="1">bank of india</asp:ListItem>
        <asp:ListItem Value="2">bank of maharashtra</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="ddlnetbanking" ErrorMessage="Select Bank" InitialValue="0" 
        style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    <br />
    <br />

    <asp:DropDownList ID="ddlcreditcard" runat="server" 
        Visible="False" AutoPostBack="True" 
        style="font-weight: bold; font-style: italic; color: #0099FF">
        <asp:ListItem Value="0">---Select---</asp:ListItem>
        <asp:ListItem Value="1">visa card</asp:ListItem>
        <asp:ListItem Value="2">mastercard</asp:ListItem>
    </asp:DropDownList>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="ddlcreditcard" ErrorMessage="Select Card type" 
        InitialValue="0" style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>

    <br />
    <br />
    <asp:Button ID="btnproceed" runat="server" onclick="btnproceed_Click" 
        Text="Proceed" 
        style="font-weight: bold; font-style: italic; color: #0099FF" />
    <br />
    <br />

</fieldset>
</td>


<td style="width: 456px">
<div>
     <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" 
         Width="443px" style="margin-left: 7px">
        <asp:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
        <HeaderTemplate>TalkTime</HeaderTemplate>
            <ContentTemplate><table border="1" style="height: 513px; width: 427px"><tr><td style="text-align: center; font-style: italic; color: #0099FF"><i><b>Amount</b></i></td><td style="width: 52px; color: #0099FF; text-align: center"><i><b>Talktime</b></i></td><td style="width: 57px; color: #0099FF; text-align: center"><i><b>Validity</b></i></td><td style="width: 201px; color: #0099FF; text-align: center"><i><b>Description</b></i></td></tr><tr><td style="text-align: center">
                <asp:LinkButton ID="LinkButton25" runat="server" CausesValidation="False">10</asp:LinkButton></td><td style="text-align: center; width: 52px; color: #666699;"><span ID="tariff"><span class="second_section" style="color: #666699">7.73</span></span></td><td style="text-align: center; width: 57px; color: #666699;"><span ID="tariff0"><span class="third_section" style="color: #666699">Unlimited</span></span></td><td style="text-align: center; width: 201px; color: #666699;"><span ID="tariff1"><span class="fourth_section" style="color: #666699">Talktime</span></span></td></tr><tr><td style="text-align: center">
                <asp:LinkButton ID="LinkButton26" runat="server" CausesValidation="False">16</asp:LinkButton></td><td style="text-align: center; width: 52px; color: #666699;"><span ID="tariff2"><span class="second_section" style="color: #666699">6</span></span></td><td style="text-align: center; width: 57px; color: #666699;"><span ID="tariff3"><span class="third_section" style="color: #666699">30 days</span></span></td><td style="text-align: center; width: 201px; color: #666699;"><span ID="tariff4"><span class="fourth_section" style="color: #666699">100 Local/National SMS daily at 10p/SMS</span></span></td></tr><tr><td style="text-align: center">
                <asp:LinkButton ID="LinkButton27" runat="server" CausesValidation="False">20</asp:LinkButton></td><td style="text-align: center; width: 52px; color: #666699;"><span ID="tariff5"><span class="second_section" style="color: #666699">15.47</span></span></td><td style="text-align: center; width: 57px; color: #666699;"><span ID="tariff6"><span class="third_section" style="color: #666699">unlimited</span></span></td><td style="text-align: center; width: 201px; color: #666699;"><span ID="tariff7"><span class="fourth_section" style="color: #666699">Talktime</span></span></td></tr><tr><td style="text-align: center">
                <asp:LinkButton ID="LinkButton28" runat="server" CausesValidation="False">25</asp:LinkButton></td><td style="text-align: center; width: 52px; color: #666699;"><span ID="tariff8"><span class="second_section" style="color: #666699">25.00</span></span></td><td style="text-align: center; width: 57px; color: #666699;"><span ID="tariff9"><span class="third_section" style="color: #666699">2 days</span></span></td><td style="text-align: center; width: 201px; color: #666699;"><span ID="tariff10"><span class="fourth_section" style="color: #666699">2 Local Idea night minutes(11 PM-7 AM)</span></span></td></tr><tr><td style="text-align: center">
                <asp:LinkButton ID="LinkButton29" runat="server" CausesValidation="False">30</asp:LinkButton></td><td style="text-align: center; width: 52px; color: #666699;"><span ID="tariff11"><span class="second_section" style="color: #666699">23.20</span></span></td><td style="text-align: center; font-weight:; width: 57px; color: #666699;"><span ID="tariff12"><span class="third_section" style="color: #666699">Unlimited</span></span></td><td style="text-align: center; width: 201px; color: #666699;"><span ID="tariff14"><span class="fourth_section" style="color: #666699">Talktime</span></span></td></tr><tr><td style="text-align: center">
                <asp:LinkButton ID="LinkButton30" runat="server" CausesValidation="False">50</asp:LinkButton></td><td style="text-align: center; width: 52px; color: #666699;"><span ID="tariff17"><span class="second_section" style="color: #666699">40.67</span></span></td><td style="text-align: center; width: 57px; color: #666699;"><span ID="tariff13"><span class="third_section" style="color: #666699">Unlimited</span></span></td><td style="text-align: center; width: 201px; color: #666699;"><span ID="tariff15"><span class="fourth_section" style="color: #666699">Talktime</span></span></td></tr><tr><td style="text-align: center">
                <asp:LinkButton ID="LinkButton31" runat="server" CausesValidation="False">60</asp:LinkButton></td><td style="text-align: center; width: 52px; color: #666699;"><span ID="tariff18"><span class="second_section" style="color: #666699">49.40</span></span></td><td style="text-align: center; width: 57px; color: #666699;"><span ID="tariff19"><span class="third_section" style="color: #666699">unlimited</span></span></td><td style="text-align: center; width: 201px; color: #666699;"><span ID="tariff16"><span class="fourth_section" style="color: #666699">Talktime</span></span></td></tr><tr><td style="text-align: center; background-color: #FFFFFF">
                <asp:LinkButton ID="LinkButton32" runat="server" style="color: #0000FF" 
                    CausesValidation="False">70</asp:LinkButton></td><td style="text-align: center; width: 52px; color: #666699;"><span ID="tariff20"><span class="second_section" style="color: #666699">58.4</span></span></td><td style="text-align: center; width: 57px; color: #666699;"><span ID="tariff21"><span class="third_section" style="color: #666699">Unlimited</span></span></td><td style="text-align: center; width: 201px; color: #666699;"><span ID="tariff22"><span class="fourth_section" style="color: #666699">Magic Recharge ! Minimum Talktime Rs 58.4 Maximum Talktime Rs 100</span></span></td></tr><tr><td style="text-align: center">
                <asp:LinkButton ID="LinkButton33" runat="server" CausesValidation="False">100</asp:LinkButton></td><td style="text-align: center; width: 52px; color: #666699"><span ID="tariff23"><span class="second_section" style="color: #666699">84.34</span></span></td><td style="text-align: center; width: 57px; color: #666699"><span ID="tariff24"><span class="third_section" style="color: #666699">Unlimited</span></span></td><td style="text-align: center; width: 201px; color: #666699"><span ID="tariff25"><span class="fourth_section" style="color: #666699">Talktime</span></span></td></tr><tr><td style="text-align: center">
                <asp:LinkButton ID="LinkButton34" runat="server" CausesValidation="False">115</asp:LinkButton></td><td style="text-align: center; width: 52px; color: #666699"><span ID="tariff26"><span class="second_section" style="color: #666699">115</span></span></td><td style="text-align: center; width: 57px; color: #666699"><span ID="tariff27"><span class="third_section" style="color: #666699">15 days</span></span></td><td style="text-align: center; width: 201px; color: #666699"><span ID="tariff28"><span class="fourth_section" style="color: #666699">2 Local Idea night minutes(11 PM-7 AM) for 2 days</span></span></td></tr><tr><td style="text-align: center">
                <asp:LinkButton ID="LinkButton35" runat="server" CausesValidation="False">120</asp:LinkButton></td><td style="text-align: center; width: 52px; color: #666699"><span ID="tariff29"><span class="second_section" style="color: #666699">101.80</span></span></td><td style="text-align: center; width: 57px; color: #666699"><span ID="tariff30"><span class="third_section" style="color: #666699">Unlimited</span></span></td><td style="text-align: center; width: 201px; color: #666699"><span ID="tariff31"><span class="fourth_section" style="color: #666699">Magic Recharge ! Minimum Talktime Rs 101.80 Maximum Talktime Rs 160.00</span></span></td></tr><tr><td style="text-align: center">
                <asp:LinkButton ID="LinkButton36" runat="server" CausesValidation="False">220</asp:LinkButton></td><td style="text-align: center; width: 52px; color: #666699"><span ID="tariff32"><span class="second_section" style="color: #666699">200</span></span></td><td style="text-align: center; width: 57px; color: #666699"><span ID="tariff33"><span class="second_section"></span><span class="third_section" style="color: #666699">Unlimited</span></span></td><td style="text-align: center; width: 201px; color: #666699"><span ID="tariff34"><span class="fourth_section" style="color: #666699">Magic Recharge ! Minimum Talktime Rs 200.00 Maximum Talktime Rs 300.00</span></span></td></tr><tr>
                <td style="text-align: center; height: 25px;"><asp:LinkButton ID="LinkButton37" 
                        runat="server" CausesValidation="False">250</asp:LinkButton></td>
                <td style="text-align: center; width: 52px; color: #666699; height: 25px;"><span ID="tariff35"><span class="second_section" style="color: #666699">250</span></span></td>
                <td style="text-align: center; width: 57px; color: #666699; height: 25px;"><span ID="tariff36"><span class="third_section" style="color: #666699">Unlimited</span></span></td>
                <td style="text-align: center; width: 201px; color: #666699; height: 25px;"><span ID="tariff37"><span class="fourth_section" style="color: #666699">Full Talk Time</span></span></td></tr></table></ContentTemplate>
      </asp:TabPanel>
     
        <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="SMS">
            <HeaderTemplate>SMS</HeaderTemplate>
        <ContentTemplate><table border="1" style="height: 465px; width: 419px"><tr><td style="width: 20px; text-align: center; font-style: italic; color: #0099FF; height: 23px; background-color: #FFFFFF;"><i><b><asp:Label ID="Label85" runat="server" style="color: #0099FF" Text="No"></asp:Label></b></i></td><td style="width: 86px; color: #0000FF; text-align: center; height: 23px;"><i><b>Amount</b></i></td><td style="width: 70px; color: #0099FF; text-align: center; height: 23px;"><i><b>Talktime</b></i></td><td style="width: 52px; color: #0099FF; text-align: center; height: 23px;"><i><b>Validity</b></i></td><td style="width: 125px; text-align: center; color: #0099FF; height: 23px;"><i><b>Description</b></i></td></tr><tr><td style="text-align: center; color: #666699; height: 42px; background-color: #FFFFFF;">1</td><td style="width: 86px; text-align: center; height: 42px;">
            <asp:LinkButton ID="LinkButton6" runat="server" CausesValidation="False" 
                onclick="LinkButton6_Click">14</asp:LinkButton></td><td style="width: 70px; text-align: center; color: #666699; height: 42px;"><span ID="tariff38"><span class="second_section" style="color: #666699">0</span></span></td><td style="text-align: center; width: 52px; color: #666699; height: 42px;"><span ID="tariff39"><span class="third_section" style="color: #666699">5 days</span></span></td><td style="width: 125px; text-align: center; height: 42px; color: #666699;"><span ID="tariff40"><span class="fourth_section" style="color: #666699">150 Local/STD SMS free for 5 days</span></span></td></tr><tr><td style="text-align: center; color: #666699; background-color: #FFFFFF;">2</td><td style="width: 86px; text-align: center;">
            <asp:LinkButton ID="LinkButton7" runat="server" CausesValidation="False" 
                onclick="LinkButton7_Click"> 16</asp:LinkButton></td><td style="width: 70px; text-align: center; color: #666699;"><span ID="tariff44"><span class="second_section" style="color: #666699">6</span></span></td><td style="text-align: center; width: 52px; color: #666699;"><span ID="tariff43"><span class="third_section" style="color: #666699">30 days</span></span></td><td style="width: 125px; text-align: center; color: #666699;"><span ID="tariff42"><span class="fourth_section" style="color: #666699">100 Local/National SMS daily at 10p/SMS</span></span></td></tr><tr><td style="text-align: center; color: #666699; background-color: #FFFFFF;">3</td><td style="width: 86px; text-align: center;">
            <asp:LinkButton ID="LinkButton8" runat="server" CausesValidation="False" 
                onclick="LinkButton8_Click"> 24</asp:LinkButton></td><td style="width: 70px; text-align: center; color: #666699;">0</td><td style="text-align: center; width: 52px; color: #666699;"><span ID="tariff45"><span class="third_section" style="color: #666699">10 days</span></span></td><td style="width: 125px; text-align: center; color: #666699;"><span ID="tariff46"><span class="fourth_section" style="color: #666699">260 Local and National SMS</span></span></td></tr><tr><td style="text-align: center; color: #666699; background-color: #FFFFFF;">4</td><td style="width: 86px; text-align: center;">
            <asp:LinkButton ID="LinkButton9" runat="server" CausesValidation="False" 
                onclick="LinkButton9_Click"> 33</asp:LinkButton></td><td style="width: 70px; text-align: center; color: #666699;">0</td><td style="text-align: center; width: 52px; color: #666699;"><span ID="tariff47"><span class="third_section" style="color: #666699">30 days</span></span></td><td style="width: 125px; text-align: center; color: #666699;"><span ID="tariff48"><span class="fourth_section" style="color: #666699">250 Local/National SMS free for 30 days </span></span></td></tr><tr><td style="text-align: center; color: #666699; background-color: #FFFFFF;">5</td><td style="width: 86px; text-align: center;">
            <asp:LinkButton ID="LinkButton10" runat="server" CausesValidation="False" 
                onclick="LinkButton10_Click"> 36</asp:LinkButton></td><td style="width: 70px; text-align: center; color: #666699;">0</td><td style="text-align: center; width: 52px; color: #666699;"><span ID="tariff49"><span class="third_section" style="color: #666699">20 days</span></span></td><td style="width: 125px; text-align: center; color: #666699;"><span ID="tariff50"><span class="fourth_section" style="color: #666699">600 Local and National SMS</span></span></td></tr><tr><td style="text-align: center; color: #666699; background-color: #FFFFFF;">6</td><td style="width: 86px; text-align: center;">
            <asp:LinkButton ID="LinkButton11" runat="server" CausesValidation="False" 
                onclick="LinkButton11_Click"> 44</asp:LinkButton></td><td style="width: 70px; text-align: center; color: #666699;">0</td><td style="text-align: center; width: 52px; "><asp:Label ID="Label55" 
                        runat="server" Text="15 days" style="color: #666699"></asp:Label></td><td style="width: 125px; text-align: center; color: #666699;"><span ID="tariff51"><span class="fourth_section" style="color: #666699">500 Local and National SMS</span></span></td></tr><tr><td style="text-align: center; color: #666699; background-color: #FFFFFF;">7</td><td style="width: 86px; text-align: center;">
            <asp:LinkButton ID="LinkButton12" runat="server" CausesValidation="False" 
                onclick="LinkButton12_Click"> 74</asp:LinkButton></td><td style="width: 70px; text-align: center; color: #666699;">0</td><td style="text-align: center; width: 52px; color: #666699;"><span ID="tariff52"><span class="third_section" style="color: #666699">30 days</span></span></td><td style="width: 125px; text-align: center; color: #666699;"><span ID="tariff53"><span class="fourth_section" style="color: #666699">850 Local and National SMS</span></span></td></tr><tr><td style="text-align: center; background-color: #FFFFFF; color: #666699;">8</td><td style="width: 86px; text-align: center;">
            <asp:LinkButton ID="LinkButton13" runat="server" CausesValidation="False" 
                onclick="LinkButton13_Click"> 91</asp:LinkButton></td><td style="width: 70px; text-align: center; color: #666699;">0</td><td style="text-align: center; width: 52px; color: #666699;"><span ID="tariff54"><span class="third_section" style="color: #666699">90 days</span></span></td><td style="width: 125px; text-align: center; color: #666699;"><span ID="tariff55"><span class="fourth_section" style="color: #666699">1000 Local and National SMS</span></span></td></tr><tr><td style="text-align: center; color: #666699; background-color: #FFFFFF;">9</td><td style="width: 86px; text-align: center;">
            <asp:LinkButton ID="LinkButton14" runat="server" CausesValidation="False" 
                onclick="LinkButton14_Click"> 153</asp:LinkButton></td><td style="width: 70px; text-align: center; color: #666699;">0</td><td style="text-align: center; width: 52px; color: #666699"><span ID="tariff56"><span class="third_section" style="color: #666699">90 Days</span></span></td><td style="width: 125px; text-align: center; color: #666699;"><span ID="tariff57"><span class="fourth_section" style="color: #666699">1700 Local and National SMS</span></span></td></tr><tr><td style="text-align: center; color: #666699; background-color: #FFFFFF;">10</td><td style="width: 86px; text-align: center;">
            <asp:LinkButton ID="LinkButton15" runat="server" CausesValidation="False" 
                onclick="LinkButton15_Click"> 1098</asp:LinkButton></td><td style="width: 70px; text-align: center; color: #666699;">0</td><td style="text-align: center; width: 52px; color: #666699"><span ID="tariff58"><span class="third_section" style="color: #666699">28 days</span></span></td><td style="width: 125px; text-align: center; color: #666699;"><span ID="tariff59"><span class="fourth_section" style="color: #666699">Unlimited Local Idea Calls, 3 GB 3G, 100 Loc / Nat SMS/Day</span></span></td></tr></table></ContentTemplate>
        
        </asp:TabPanel>
     
    </asp:TabContainer>

</div>
</td>


<td style="width: 456px">
    &nbsp;</td>


<td style="width: 456px">
    &nbsp;</td>


<td style="width: 456px">
    &nbsp;</td>


<td style="width: 456px">
    &nbsp;</td>
<td style="width: 172px">

    &nbsp;</td>
</tr>
</table>
</center>
</body>
</html>
</asp:Content>

