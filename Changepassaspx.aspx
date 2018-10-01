<%@ Page Title="" Language="C#" MasterPageFile="~/Account.master" AutoEventWireup="true" CodeFile="Changepassaspx.aspx.cs" Inherits="Changepassaspx" %>

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
    <center>
<table>
<tr>
<td>
<fieldset style="width: 229px">
<legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #0099FF">Data Settings</legend>
<table style="width: 234px; height: 177px;">
<tr>
<td style="height: 26px; text-align: justify;">
    <asp:Image ID="Image1" runat="server" Height="28px" 
        ImageUrl="~/client icon/edit-notes.png" Width="39px" />
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
        CausesValidation="False" style="font-weight: bold; font-style: italic">Edit Account Details</asp:LinkButton></td>
</tr>
<center>
<tr><td style="text-align: justify">
    <asp:Image ID="Image2" runat="server" Height="28px" 
        ImageUrl="~/client icon/reccharge.png" Width="39px" />
    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
        CausesValidation="False" style="font-weight: bold; font-style: italic">Mobile Recharge History</asp:LinkButton></td></tr>
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
    <tr><td style="text-align: justify">
        <asp:Image ID="Image5" runat="server" Height="28px" 
            ImageUrl="~/client icon/user-comment-icon.png" Width="39px" />
        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
            CausesValidation="False" style="font-weight: bold; font-style: italic">View Comment</asp:LinkButton></td></tr>
        <tr><td style="text-align: justify">
            <asp:Image ID="Image6" runat="server" Height="28px" 
                ImageUrl="~/client icon/Oxygen-Icons.org-Oxygen-Apps-preferences-desktop-user-password.ico" 
                Width="39px" />
            <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" 
                CausesValidation="False" style="font-weight: bold; font-style: italic">Change Password</asp:LinkButton></td></tr>
<center>
            <tr><td style="text-align: justify">
                <asp:Image ID="Image7" runat="server" Height="28px" 
                    ImageUrl="~/client icon/Phonebook-icon.png" Width="39px" />
                <asp:LinkButton ID="lbphonebook" runat="server" onclick="lbphonebook_Click" 
                    CausesValidation="False" style="font-weight: bold; font-style: italic">PhoneBook</asp:LinkButton></td></tr>
<center>
                <tr><td style="text-align: justify">
                    <asp:Image ID="Image8" runat="server" Height="28px" 
                        ImageUrl="~/client icon/wallet-xxl.png" Width="39px" />
                    <asp:LinkButton ID="lbaddmoney" runat="server" onclick="lbaddmoney_Click" 
                        CausesValidation="False" style="font-weight: bold; font-style: italic">Add Money in Wallet</asp:LinkButton></td></tr>
</table>


</fieldset>

</td>
<td>
<fieldset style="width: 739px">
<legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">Change Password:</legend>
<table>
<tr>
<td style="font-style: italic; font-weight: bold; color: #0099FF; background-color: #FFFFFF; width: 222px;">
    <i><b>Old Password:</b></i></td><td style="width: 158px">
    <asp:TextBox ID="txtopass" runat="server" 
            style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
            
            </td><td style="width: 850px">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Plz Enter The Old Password" ControlToValidate="txtopass" 
            Display="Dynamic" style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="Regex3" runat="server" ControlToValidate="txtopass"
ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$"

            ErrorMessage="Password must contain: Minimum 8 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet and 1 Number" 
            ForeColor="Red" Display="Dynamic" />
    </td>
</tr>
<tr>
<td style="font-style: italic; font-weight: bold; color: #0099FF; background-color: #FFFFFF; width: 222px;">
    <i><b>New Password:</b></i></td><td style="width: 158px">
    <asp:TextBox ID="txtnpass" runat="server" 
            style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox></td>
            <td style="width: 850px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Plz Enter The Password" ControlToValidate="txtnpass" 
                    Display="Dynamic" style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="Regex4" runat="server" ControlToValidate="txtnpass"
ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$"

                    ErrorMessage="Password must contain: Minimum 8 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet and 1 Number" 
                    ForeColor="Red" Display="Dynamic" />
    </td>
</tr>
<tr>
<td style="font-style: italic; font-weight: bold; color: #0099FF; background-color: #FFFFFF; width: 222px;">
    <i><b>Confirm Password:</b></i></td><td style="width: 158px">
    <asp:TextBox ID="txtcpass" runat="server" 
            style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox></td>
            <td style="width: 850px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Plz Enter The Confirm Password" ControlToValidate="txtcpass" 
                    Display="Dynamic" style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtnpass" ControlToValidate="txtcpass" Display="Dynamic" 
                    ErrorMessage="New Password And Confirm Password Not Match" 
                    style="font-style: italic; font-weight: 700; color: #FF0000"></asp:CompareValidator>
    </td>
</tr>
<tr>
<td style="font-style: italic; font-weight: bold; color: #0099FF; background-color: #FFFFFF; width: 222px;">
    <i><b>
    <asp:Label ID="changepass" runat="server" style="color: #FF0000" 
        Visible="False"></asp:Label>
    </b></i>
</td><td style="width: 158px">
    <asp:Button ID="btnchangepass" runat="server" Text="Change Password" 
            onclick="btnchangepass_Click" 
            style="font-weight: bold; font-style: italic; color: #0099FF" /></td>
</tr>
</table>
</fieldset>
</td>
</tr>
</table>
</center>
</asp:Content>

