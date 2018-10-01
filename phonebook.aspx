<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="phonebook.aspx.cs" Inherits="phonebook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<table>
<tr>
<td style="height: 30px">
    <asp:Label ID="lblwelcome" runat="server" Text="Welcome:" 
        style="font-weight: bold; font-style: italic; color: #0099FF"></asp:Label>
</td>
<td style="height: 30px">
    <asp:Label ID="lbluser" runat="server" Visible="False" 
        style="font-weight: bold; font-style: italic; color: #0000CC; background-color: #FFFFFF"></asp:Label>
</td>
<td>
    <asp:Label ID="wallamount" runat="server" Text="MyWallet" 
        style="font-weight: bold; font-style: italic; color: #0099FF"></asp:Label>
</td>
<td>
    <asp:Label ID="lblwallet" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0000CC; background-color: #FFFFFF"></asp:Label>
</td>
<td>
    <asp:Label ID="rs" runat="server" Text="Rs" 
        style="font-weight: bold; font-style: italic; color: #0000CC; background-color: #FFFFFF"></asp:Label>
</td>
<td style="height: 30px">
    <asp:Button ID="btnlogout" runat="server" Text="Logout" 
        onclick="lbllogout_Click" style="font-weight: bold; font-style: italic; color: #0099FF;" 
        CausesValidation="False" /></td>
</tr>
</table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<table>
<tr>
<td style="font-style: italic; color: #0099FF">
    <i><b>Enter Friend Name:
</b></i>
</td><td>
    <asp:TextBox ID="txtfname" runat="server" 
            style="color: #0099FF; background-color: #FFFFFF"></asp:TextBox></td><td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtfname" ErrorMessage="Enter The Name" 
            style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td style="font-style: italic; color: #0099FF">
    <i><b>Contact No:
</b></i>
</td><td>
    <asp:TextBox ID="txtfcontact" runat="server" 
            style="color: #0099FF; background-color: #FFFFFF"></asp:TextBox></td>
    <td>
        <asp:Label ID="lblcheckid" runat="server"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtfcontact" ErrorMessage="Enter the Contact Number" 
            style="font-weight: bold; font-style: italic; color: #FF0000" 
            Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator
                ID="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer"
            ErrorMessage="Value must be a whole number" ControlToValidate="txtfcontact" 
            Display="Dynamic" 
        style="font-weight: 700; font-style: italic; color: #FF0000"  ></asp:CompareValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        Display="Dynamic" ValidationExpression="[0-9]{10}" 
        ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtfcontact" 
        style="font-weight: 700; font-style: italic; color: #FF0000"></asp:RegularExpressionValidator>

    </td>
</tr>
<tr>
<td></td><td>
    <asp:Button ID="btnadd" runat="server" Text="Add Contact" 
        onclick="btnadd_Click" 
        style="font-weight: 700; font-style: italic; color: #0099FF" /></td>
</tr>
</table>
    <asp:Label ID="lblphone" runat="server" Visible="False"></asp:Label>
<br />
<fieldset style="color: #0000FF">
<legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #0099FF">Your Friends Phone 
    No</legend>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
</fieldset>
<br />
<br />

<br />
<br />
<br />
<br /><br />
    <asp:AdRotator ID="AdRotator1" runat="server" 
        DataSourceID="XmlDataSourcephonebook" />
    <asp:XmlDataSource ID="XmlDataSourcephonebook" runat="server" 
        DataFile="~/phonebookadd.xml"></asp:XmlDataSource>
        <br />
<br />

        </center>
</asp:Content>

