<%@ Page Title="" Language="C#" MasterPageFile="~/Manage1.master" AutoEventWireup="true" CodeFile="creditpayment.aspx.cs" Inherits="creditpayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table>
<tr>
<td>
    <asp:Label ID="lblwelcome" runat="server" Text="Welcome:" 
        style="font-weight: bold; font-style: italic; color: #0099FF"></asp:Label></td>
    <td>
        <asp:Label ID="lbluser" runat="server" 
            style="font-weight: bold; font-style: italic; color: #666699"></asp:Label></td>
        <td>
            &nbsp;</td>
        <td style="width: 4px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="btnlogout" runat="server" Text="Logout" 
                onclick="btnlogout_Click" 
                style="font-weight: bold; font-style: italic; color: #0099FF;" 
                CausesValidation="False" /></td>
</tr>
</table>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<table>
<tr>
<td style="width: 238px"><span style="color: #0099FF"><strong><em>Bank Name:</em></strong></span><asp:Label 
        ID="lblbank" runat="server" Text="Label" style="color: #0000FF"></asp:Label></td>
<td style="width: 596px"></td>
<td style="width: 496px"><span style="color: #0099FF"><strong><em>Transaction Amount:</em></strong></span><asp:Label 
        ID="lbltamu" runat="server" Text="Label" style="color: #0000FF"></asp:Label></td>
</tr>
</table>
<fieldset>
<legend style="font-size: x-large; color: #FFFFFF; font-weight: 700; font-style: italic; background-color: #0099FF">Payment Information</legend>
<table>
<tr>
<td style="font-style: italic; color: #0099FF"><i><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Card No:</b></i></td><td>
    <asp:TextBox ID="txtcardno" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0099FF" 
        Height="27px" Width="217px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Plz Enter The Card No" ControlToValidate="txtcardno" 
        style="color: #FF0000; font-weight: 700; font-style: italic" 
        Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:CompareValidator
                ID="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer"
            ErrorMessage="Value must be a whole number" ControlToValidate="txtcardno" 
            Display="Dynamic" style="font-weight: 700; font-style: italic; color: #FF0000" ></asp:CompareValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
        ControlToValidate="txtcardno" Display="Dynamic" 
        ErrorMessage="Enter Valid Card Number" 
        style="font-weight: 700; font-style: italic; color: #FF0000" 
        ValidationExpression="[0-9]{15}"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td style="font-style: italic; color: #0099FF"><span style="color: #0099FF"><i><b>Expiry Date:</b></i></span><asp:DropDownList 
        ID="ddlmonth" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0099FF" 
        AutoPostBack="True">
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
    &nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Plz Select The Month" ControlToValidate="ddlmonth" 
        InitialValue="Month" style="color: #FF0000; font-weight: bold" 
        Display="Dynamic"></asp:RequiredFieldValidator>
&nbsp;
    <asp:DropDownList ID="ddlYear" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0099FF" 
        AutoPostBack="True">
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

    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="ddlYear" ErrorMessage="Plz Select The Year" 
        InitialValue="Year" style="color: #FF0000; font-weight: bold" 
        Display="Dynamic"></asp:RequiredFieldValidator>

</td>
<td style="font-style: italic; color: #0099FF"><span style="color: #0099FF"><i><b>CVV:</b></i></span><asp:TextBox 
        ID="txtcvv" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0099FF" 
        Height="27px" Width="53px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtcvv" ErrorMessage="Plz Enter The cvv Number" 
        style="color: #FF0000; font-weight: 700" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:CompareValidator
                ID="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer"
            ErrorMessage="Value must be a whole number" ControlToValidate="txtcvv" 
            Display="Dynamic" 
        style="font-weight: 700; font-style: italic; color: #FF0000"  ></asp:CompareValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        Display="Dynamic" ValidationExpression="[0-9]{3}" 
        ErrorMessage="Enter Valid ccv Number" ControlToValidate="txtcvv" 
        style="font-weight: 700; font-style: italic; color: #FF0000"></asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td style="font-style: italic; color: #0099FF"><i><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Card Holder Name:</b></i></td><td>
    <asp:TextBox ID="txtname" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0099FF" 
        Height="22px" Width="209px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="txtname" ErrorMessage="Plz Enter The Name" 
        style="color: #FF0000; font-weight: bold; font-style: italic" 
        Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ControlToValidate="txtname" ValidationExpression="^[a-zA-Z'.\s]{1,20}"  
        ErrorMessage="Enter Valid Name" Display="Dynamic" 
        style="font-weight: 700; font-style: italic; color: #FF0000"></asp:RegularExpressionValidator></td>
</tr>
<tr><td colspan="2" style="font-style: italic; color: #0099FF">
    <i><b>
    <asp:CheckBox ID="CheckBox1" runat="server" 
        
        Text="Save your cards with CCAvenue Checkout for future payments ?(Note: We do not store your CVV/CVC number.)" 
        style="color: #0099FF" /></b></i></td></tr>
<tr>
<td></td><td>
    <asp:Button ID="btnmakepay" runat="server" Text="Make Payment" 
        onclick="btnmakepay_Click" 
        style="font-style: italic; font-weight: bold; color: #FFFFFF; background-color: #FF0000" />&nbsp;&nbsp; 
    <asp:Button ID="btncancel"
        runat="server" Text="Cancel" 
        
        style="font-style: italic; font-weight: bold; color: #FFFFFF; background-color: #FF0000" 
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
           <asp:Label ID="lblmobino" runat="server" Text="Label" Visible="False"></asp:Label>
           <asp:Label ID="lbloperator" runat="server" Text="Label" Visible="False"></asp:Label>
           <asp:Label ID="lblcircle" runat="server" Text="Label" Visible="False"></asp:Label>
           <asp:Label ID="lblpayoption" runat="server" Text="Label" Visible="False"></asp:Label>
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
<br />
<br />
<center>
<table>
<tr>
<td>
    <asp:Image ID="Image1" runat="server" Height="150px" 
        ImageUrl="~/client icon/security1.png" Width="227px" /></td><td>
        <asp:Image ID="Image2" runat="server" Height="140px" 
            ImageUrl="~/client icon/Security2.jpg" Width="227px" /></td>
</tr>
</table>
</center>
</asp:Content>

