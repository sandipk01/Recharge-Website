<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="UserQuery.aspx.cs" Inherits="UserQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <center>
<table>
<tr>
<td>
    <asp:Label ID="lblwelcome" runat="server" Text="Welcome:" 
        style="font-weight: bold; font-style: italic; color: #0099FF"></asp:Label></td>
    <td>
        <asp:Label ID="lbluser" runat="server" 
            style="font-weight: bold; font-style: italic; color: #0000CC"></asp:Label></td>
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
        <td>
            <asp:Button ID="btnlogout" runat="server" Text="Logout" 
                onclick="btnlogout_Click" style="font-weight: bold; font-style: italic" /></td>
</tr>
</table>
</center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<table>
<tr>
<td style="width: 491px" >
   <fieldset>
   <legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #0099FF">Your Comments</legend>
       <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
   </fieldset> 
</td>
<td style="width: 506px">
<fieldset>
<legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #0099FF">EasyRecharge.com</legend>
    <br />
    <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
</fieldset>
    &nbsp;</td>
</tr>
</table>
</center>
</asp:Content>

