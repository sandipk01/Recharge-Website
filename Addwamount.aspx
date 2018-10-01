<%@ Page Title="" Language="C#" MasterPageFile="~/Manage1.master" AutoEventWireup="true" CodeFile="Addwamount.aspx.cs" Inherits="Addwamount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table>
<tr>
<td style="height: 30px">
    <asp:Label ID="lblwelcome" runat="server" Text="Welcome:" 
        style="font-weight: bold; font-style: italic; color: #0099FF;" 
        Visible="False"></asp:Label>
</td>
<td style="height: 30px">
    <asp:Label ID="lbluser" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0000CC;" 
        Visible="False"></asp:Label>
</td>
<td>
    <asp:Label ID="wallamount" runat="server" Text="MyWallet:" 
        style="font-weight: bold; font-style: italic; color: #0099FF" 
        Visible="False"></asp:Label>
</td>
<td>
    <asp:Label ID="lblwallet" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0000CC" 
        Visible="False"></asp:Label>
</td>
<td>
    <asp:Label ID="rs" runat="server" Text="Rs" 
        style="font-weight: bold; font-style: italic; color: #0000CC" 
        Visible="False"></asp:Label>
</td>
<td style="height: 30px">
    <asp:Button ID="btnlogout" runat="server" Text="Logout" 
        onclick="lbllogout_Click" style="font-weight: bold; font-style: italic; color: #0099FF;" 
        Visible="False" CausesValidation="False" /></td>
</tr>
</table>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<table>
<tr>
<td style="width: 358px">
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
</fieldset>
</td>
<td><fieldset>
<legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">
Add Amount in Wallet
</legend>

</center>

</center>

<table style="width: 453px">
<tr>
<td style="font-style: italic; color: #0099FF; width: 118px; text-align: right; height: 45px;"><i><b>Amount:</b></i></td>
<center>
<center>
    <td style="width: 102px; height: 45px; text-align: justify;">
    <asp:TextBox ID="txtamount" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
</td>
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtamount" ErrorMessage="Plz Select The  Amount" 
        style="font-weight: bold; font-style: italic; color: #FF0000" 
        Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator
                ID="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer"
            ErrorMessage="Value must be a whole number" ControlToValidate="txtamount" 
            Display="Dynamic" 
        style="font-weight: 700; font-style: italic; color: #FF0000"  ></asp:CompareValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        Display="Dynamic" ValidationExpression="[0-9]{1,4}" 
        ErrorMessage="Enter Valid Amount" ControlToValidate="txtamount" 
        style="font-weight: 700; font-style: italic; color: #FF0000"></asp:RegularExpressionValidator>

    </td>
</tr>

</center>

<tr>
<td style="font-style: italic; color: #0099FF; width: 118px; text-align: right;"><i><b>Payment Option:</b></i></td>
<center>
<center>
<center>
    <td style="width: 102px">
    <asp:DropDownList ID="ddlpayment" runat="server" AutoPostBack="True" 
        style="font-weight: bold; font-style: italic; color: #0099FF">
        <asp:ListItem Value="1">---Select---</asp:ListItem>
        <asp:ListItem Value="2">Credit Card</asp:ListItem>
        <asp:ListItem Value="3">Debit Card</asp:ListItem>
    </asp:DropDownList>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="ddlpayment" ErrorMessage="Plz Select The Payment Option" 
            InitialValue="1" style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    </td>
</tr>

</center>

<tr>
<td style="font-style: italic; color: #0099FF; width: 118px; text-align: right;"><i><b>Bank:</b></i></td>
<center>
<center>
<center>
<center>
    <td style="width: 102px">
    <asp:DropDownList ID="ddlbank" runat="server" AutoPostBack="True" 
        style="font-weight: bold; font-style: italic; color: #0099FF">
        <asp:ListItem Value="1">---Select---</asp:ListItem>
        <asp:ListItem Value="2">Bank of india</asp:ListItem>
        <asp:ListItem Value="3">icicici Bank</asp:ListItem>
        <asp:ListItem Value="4">SBI Bank</asp:ListItem>
        <asp:ListItem Value="5">PMP Bank</asp:ListItem>
    </asp:DropDownList>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="ddlbank" ErrorMessage="Plz Select The Bank" InitialValue="1" 
            style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    </td>
</tr>

</center>

<tr>
<td style="font-style: italic; color: #0099FF; width: 118px; text-align: right;"><i><b>Card Type</b></i></td>
<center>
<center>
<center>
<center>
<center>
    <td style="width: 102px">
    <asp:DropDownList ID="ddlcardtype" runat="server" AutoPostBack="True" 
        style="font-weight: bold; font-style: italic; color: #0099FF">
        <asp:ListItem Value="1">---Select---</asp:ListItem>
        <asp:ListItem Value="2">Visa Card</asp:ListItem>
        <asp:ListItem Value="3">Master Card</asp:ListItem>
        <asp:ListItem Value="4">Rupay</asp:ListItem>
    </asp:DropDownList>
    </td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="ddlcardtype" ErrorMessage="Plz Select The Type Of Card" 
            InitialValue="1" style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td style="width: 118px"></td><td style="width: 102px">
    <asp:Button ID="Button1" runat="server" Text="Proceed" 
        onclick="Button1_Click" 
        style="font-weight: bold; font-style: italic; color: #0099FF" /></td>
</tr>
</table>
</fieldset></td>
</tr>
</table>

</center>

</center>

</center>

</center>

</center>

</center>

</center>

</center>

</center>

</center>
<br />
<br />
<br />
<br />

<table>
<tr>

<td style="width: 604px"> 
<center>
    <asp:AdRotator ID="AdRotator1" Height="200px" Width="300px" runat="server" 
        DataSourceID="XmlDataSourceaddamount" />
    <asp:XmlDataSource ID="XmlDataSourceaddamount" runat="server" 
        DataFile="~/adamountadd.xml"></asp:XmlDataSource>
    </center>
</td>
<td> 
<center>
    <asp:AdRotator ID="AdRotator2" Height="200px" Width="300px" runat="server" 
        DataSourceID="XmlDataSourceaddamount2" />
    <asp:XmlDataSource ID="XmlDataSourceaddamount2" runat="server" 
        DataFile="~/adamountadd.xml"></asp:XmlDataSource>
    </center>
</td>
</tr>
</table>
<br />
<br />
</asp:Content>

