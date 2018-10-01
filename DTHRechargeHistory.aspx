<%@ Page Title="" Language="C#" MasterPageFile="~/Manage1.master" AutoEventWireup="true" CodeFile="DTHRechargeHistory.aspx.cs" Inherits="DTHRechargeHistory" %>

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
            <asp:Label ID="wallamount" runat="server" Text="MyWallet" 
                style="font-weight: bold; font-style: italic; color: #0099FF"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblwallet" runat="server" 
                style="font-weight: bold; font-style: italic; color: #666699"></asp:Label>
        </td>
        <td>
            <asp:Label ID="rs" runat="server" Text="Rs" 
                style="font-weight: bold; font-style: italic; color: #666699"></asp:Label>
        </td>
        <td>
            <asp:Button ID="btnlogout" runat="server" Text="Logout" 
                onclick="btnlogout_Click" style="font-weight: bold; font-style: italic" /></td>
</tr>
</table>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<fieldset>
<legend style="font-size: large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">
DTH Recharge History
</legend>
<br />

<fieldset style="color: #0000FF">
<legend style="font-style: italic; font-weight: 700; color: #FFFFFF; background-color: #0099FF">DTH Recharge Vai EasyWallet</legend>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
</fieldset>

<fieldset style="color: #0000FF">
<legend style="font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">DTH Recharge Vai CreditCard</legend>
    <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
</fieldset>
</fieldset>
</center>
</asp:Content>

