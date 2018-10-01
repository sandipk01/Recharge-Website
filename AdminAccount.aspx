<%@ Page Title="" Language="C#" MasterPageFile="~/Manage.master" AutoEventWireup="true" CodeFile="AdminAccount.aspx.cs" Inherits="AdminAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table>
<tr>
<td>
    <asp:Label ID="lblwelcome" runat="server"></asp:Label></td>
<td>
    <asp:Label ID="lbluser" runat="server"></asp:Label></td>
<td>
    <asp:Button ID="btnlogout" runat="server" Text="Button" /></td>
</tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
<table>
<tr>
<td>
<table>
<tr>
<td>Admin Username:</td><td>
    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>
Admin Password:</td><td>
    <asp:TextBox ID="txtpass" runat="server"></asp:TextBox></td>
</td>
<tr>
<td></td><td>
    <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" 
        style="width: 47px" /></td>
</tr>
</tr>
</table>
</td>
<td>

</td>
</tr>
</table>
</center>
</asp:Content>

