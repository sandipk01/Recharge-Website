<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="UserRechargeHistory.aspx.cs" Inherits="UserRechargeHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <center>
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
</center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<center><div>
</div></center>
<br />
<fieldset>
<legend style="width: 519px; font-weight: 700; font-style: italic; color: #FFFFFF; font-size: x-large; background-color: #0099FF;">Hello 
    <asp:Label ID="Label1" runat="server" style="color: #66FF66"></asp:Label> &nbsp;check Your Recharge History</legend>
    <br />
    <center>
    <fieldset style="color: #666699; font-style: italic; font-weight: 700">
    <legend style="font-weight: 700; font-style: italic; font-size: large; color: #FFFFFF; background-color: #0099FF">Mobile Recharge History Vai Easy Wallet</legend>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    </fieldset>
        <br />
        <fieldset style="font-style: italic; font-weight: 700; color: #666699">
        <legend style="font-weight: 700; font-size: large; color: #FFFFFF; font-style: italic; background-color: #0099FF">Mobile Recharge History Vai Credit Card</legend>
        <asp:PlaceHolder ID="PlaceHolder3" runat="server"></asp:PlaceHolder>
        </fieldset>
        <br />
        <fieldset style="font-weight: 700; font-style: italic; color: #666699">
        <legend style="font-size: large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">Add Money in Wallet Vai Credit Card</legend>
        <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
        </fieldset>
    </center>
    </fieldset>
    <br />
    </asp:Content>

