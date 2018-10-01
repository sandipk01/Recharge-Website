<%@ Page Title="" Language="C#" MasterPageFile="~/Manage1.master" AutoEventWireup="true" CodeFile="DTHCreditPayment.aspx.cs" Inherits="DTHCreditPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table>
 <tr>
 <td>
     <asp:Label ID="lblwelcome" runat="server" Text="Welcome:" 
         style="font-weight: 700; font-style: italic; color: #0099FF" 
         Visible="False"></asp:Label></td>
     <td style="width: 26px">
         <asp:Label ID="lbluser" runat="server" Text="User" 
             style="color: #0000FF; font-weight: 700; font-style: italic" 
             Visible="False"></asp:Label></td><td>
             
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
             <td>
             <asp:Button ID="btnlogout" runat="server" Text="Logout" 
                 onclick="btnlogout_Click" Visible="False" CausesValidation="False" 
                     style="color: #0099FF" /></td>
 </tr>
 </table>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<table>
<tr>
<td style="width: 238px">&nbsp;</td>
<td style="width: 596px"></td>
<td style="width: 496px"><span style="color: #0099FF"><strong><em>Transaction Amount:</em></strong></span><asp:Label 
        ID="lbltamu" runat="server" Text="Label" style="color: #0000FF"></asp:Label></td>
</tr>
</table>
<fieldset>
<legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">Payment Information</legend>
<table>
<tr>
<td style="font-style: italic; color: #0099FF; width: 395px;"><i><b>Card No:</b></i></td><td>
    <asp:TextBox ID="txtcardno" runat="server" Height="27px" 
        style="font-weight: bold; font-style: italic; color: #0099FF" Width="213px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
        ControlToValidate="txtcardno" Display="Dynamic" 
        ErrorMessage="Enter The Card No" 
        style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator2" runat="server" 
        ControlToValidate="txtcardno" Display="Dynamic" 
        ErrorMessage="Value must be a whole number" Operator="DataTypeCheck" 
        style="font-weight: 700; font-style: italic; color: #FF0000" Type="Integer"></asp:CompareValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="txtcardno" Display="Dynamic" 
        ErrorMessage="Enter Valid Card Number" 
        style="font-weight: 700; font-style: italic; color: #FF0000" 
        ValidationExpression="[0-9]{15}"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td style="font-style: italic; color: #0099FF; width: 395px;"><span style="color: #0099FF"><i><b>Expiry Date:</b></i></span><asp:DropDownList 
        ID="ddlmonth" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0099FF">
    <asp:ListItem>Month</asp:ListItem>
    <asp:ListItem>Jan(01)</asp:ListItem>
    <asp:ListItem>Feb(02)</asp:ListItem>
    <asp:ListItem>Mar(03)</asp:ListItem>
    <asp:ListItem>Apr(04)</asp:ListItem>
    <asp:ListItem>May(05)</asp:ListItem>
    <asp:ListItem>June(06)</asp:ListItem>
    <asp:ListItem>July(07)</asp:ListItem>
    <asp:ListItem>Aug(08)</asp:ListItem>
    <asp:ListItem>Sept(09)</asp:ListItem>
    <asp:ListItem>Oct(10)</asp:ListItem>
    <asp:ListItem>Nov(11)</asp:ListItem>
    <asp:ListItem>Dec(12)</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
        ControlToValidate="ddlmonth" ErrorMessage="Select Month" InitialValue="Month" 
        style="font-weight: bold; color: #FF0000" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:DropDownList ID="ddlyear" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0099FF">
        <asp:ListItem>Year</asp:ListItem>
        <asp:ListItem>2016</asp:ListItem>
        <asp:ListItem>2017</asp:ListItem>
        <asp:ListItem>2018</asp:ListItem>
        <asp:ListItem>2019</asp:ListItem>
        <asp:ListItem>2020</asp:ListItem>
        <asp:ListItem>2021</asp:ListItem>
        <asp:ListItem>2022</asp:ListItem>
        <asp:ListItem>2023</asp:ListItem>
        <asp:ListItem>2024</asp:ListItem>
        <asp:ListItem>2025</asp:ListItem>
        <asp:ListItem>2026</asp:ListItem>
        <asp:ListItem>2027</asp:ListItem>
        <asp:ListItem>2028</asp:ListItem>
        <asp:ListItem>2029</asp:ListItem>
        <asp:ListItem>2030</asp:ListItem>
        <asp:ListItem>2031</asp:ListItem>
        <asp:ListItem>2032</asp:ListItem>
        <asp:ListItem>2033</asp:ListItem>
        <asp:ListItem>2034</asp:ListItem>
        <asp:ListItem>2035</asp:ListItem>
        <asp:ListItem>2036</asp:ListItem>
        <asp:ListItem>2037</asp:ListItem>
        <asp:ListItem>2038</asp:ListItem>
        <asp:ListItem>2039</asp:ListItem>
        <asp:ListItem>2040</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
        ControlToValidate="ddlyear" ErrorMessage="Select Year" InitialValue="Year" 
        style="font-weight: bold; color: #FF0000" Display="Dynamic"></asp:RequiredFieldValidator>
</td>
<td><span style="color: #0099FF"><i><b>CVV:</b></i></span><asp:TextBox 
        ID="txtcvv" runat="server" Height="27px" 
        style="font-weight: bold; font-style: italic; color: #0099FF" Width="53px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
        ControlToValidate="txtcvv" ErrorMessage="Enter The cvv number" 
        style="font-weight: bold; font-style: italic; color: #FF0000" 
        Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator3" runat="server" 
        ControlToValidate="txtcvv" Display="Dynamic" 
        ErrorMessage="Value must be a whole number" Operator="DataTypeCheck" 
        style="font-weight: 700; font-style: italic; color: #FF0000" Type="Integer"></asp:CompareValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ControlToValidate="txtcvv" Display="Dynamic" 
        ErrorMessage="Enter Valid ccv Number" 
        style="font-weight: 700; font-style: italic; color: #FF0000" 
        ValidationExpression="[0-9]{3}"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td style="font-style: italic; color: #0099FF; width: 395px;"><i><b>Card Holder Name:</b></i></td><td>
    <asp:TextBox ID="txtcardname" runat="server" Height="24px" 
        style="font-weight: bold; font-style: italic; color: #0099FF" 
        Width="198px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
        ControlToValidate="txtcardname" ErrorMessage="Enter The Card Holder Name" 
        style="font-weight: bold; font-style: italic; color: #FF0000" 
        Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtcardname" ValidationExpression="^[a-zA-Z'.\s]{1,20}"  
        ErrorMessage="Enter Valid Name" Display="Dynamic" 
        style="font-weight: 700; font-style: italic; color: #FF0000"></asp:RegularExpressionValidator></td>
</tr>
<tr><td colspan="2" style="font-style: italic; color: #0099FF">
    <i><b>
    <asp:CheckBox ID="CheckBox1" runat="server" 
        
        Text="Save your cards with CCAvenue Checkout for future payments ?(Note: We do not store your CVV/CVC number.)" 
        style="color: #0099FF" /></b></i></td></tr>
<tr>
<td style="width: 395px"></td><td>
    <asp:Button ID="btnmakepay" runat="server" Text="Make Payment" 
        onclick="btnmakepay_Click" 
        style="font-weight: bold; font-style: italic; color: #FFFFFF; background-color: #FF0000" />
    <asp:Button ID="btncancel"
        runat="server" Text="Cancel" 
        
        style="font-weight: bold; font-style: italic; color: #FFFFFF; background-color: #FF0000" 
        onclick="btncancel_Click" CausesValidation="False" /></td>
</tr>
</table>
</fieldset>
<asp:ScriptManager ID="ScriptManager1" runat="server">
       </asp:ScriptManager>
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
           <asp:Timer ID="Timer1" runat="server" Interval="1000">
           </asp:Timer>
   <asp:Label ID="lbltime" runat="server" Text="Label" Visible="False"></asp:Label>&nbsp;&nbsp;<asp:Label ID="lbldate"
           runat="server" Text="Label" Visible="False"></asp:Label>
           <asp:Label ID="lblsuc" runat="server" Text="successful" Visible="False"></asp:Label>
           <asp:Label ID="lblunsuc" runat="server" Text="Unsuccessful" Visible="False"></asp:Label>
           <asp:Label ID="lbldthp" runat="server" Text="Label" Visible="False"></asp:Label>
           <asp:Label ID="lblsubno" runat="server" Text="Label" Visible="False"></asp:Label>
           <asp:Label ID="lblpayo" runat="server" Text="Label" Visible="False"></asp:Label>
           <asp:Label ID="lblcardtype" runat="server" Text="Label" Visible="False"></asp:Label>
           </ContentTemplate>
            </asp:UpdatePanel>
 
</center>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<center>
<table>
<tr>
<td>
    <asp:Image ID="Image1" runat="server" Height="134px" 
        ImageUrl="~/client icon/security1.png" Width="238px" /></td><td>
        <asp:Image ID="Image2" runat="server" Height="148px" 
            ImageUrl="~/client icon/Security2.jpg" Width="219px" /></td>
</tr>
</table>
</center>
</asp:Content>

