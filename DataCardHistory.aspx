<%@ Page Title="" Language="C#" MasterPageFile="~/Manage1.master" AutoEventWireup="true" CodeFile="DataCardHistory.aspx.cs" Inherits="DataCardHistory" %>

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
                onclick="btnlogout_Click" 
                style="font-weight: bold; font-style: italic; color: #0099FF;" 
                CausesValidation="False" /></td>
</tr>
</table>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<fieldset>
<legend style="font-weight: 700; font-style: italic; font-size: large; color: #FFFFFF; background-color: #0099FF">Data Card History</legend>
<br />
<fieldset style="color: #0000FF; font-weight: 700; font-style: italic">
<legend style="font-weight: 700; font-style: italic; font-size: large; color: #FFFFFF; background-color: #0099FF">Datacard Recharge Vai Easywallet</legend>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
</fieldset>
<fieldset style="color: #0000FF; font-weight: 700; font-style: italic">
<legend style="font-weight: 700; font-style: italic; font-size: large; color: #FFFFFF; background-color: #0099FF">Datacard Recharge Vai CreditCard</legend>
    <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
</fieldset>
</fieldset>
</center>
</asp:Content>

