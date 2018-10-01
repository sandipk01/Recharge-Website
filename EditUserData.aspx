<%@ Page Title="" Language="C#" MasterPageFile="~/UserEdit.master" AutoEventWireup="true" CodeFile="EditUserData.aspx.cs" Inherits="EditUserData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<html>
<body>
<center>
<table>

<tr>
<td>
    <asp:Label ID="lblwelcome" runat="server" Text="Welcome:" 
        style="font-weight: bold; font-style: italic; color: #0099FF" Visible="False"></asp:Label></td>
    <td>
        <asp:Label ID="lbluser" runat="server" 
            style="font-weight: bold; font-style: italic; color: #0000CC" Visible="False"></asp:Label></td>
        <td>
            <asp:Label ID="wallamount" runat="server" Text="MyWallet" 
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
                onclick="btnlogout_Click" Visible="False" CausesValidation="False" 
                style="font-weight: 700; font-style: italic; color: #0099FF" /></td>
</tr>
</table>
</center>
</body>
</html>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>
<body>
<center>
<table>
<tr>
<br />
<td colspan="2" style="height: 118px">
<fieldset style="width: 714px; color: #0000FF;">
<legend style="color: #FFFFFF; font-weight: 700; font-style: italic; font-size: x-large; background-color: #0099FF">Hello 
    <asp:Label ID="Label1" runat="server" 
        style="font-weight: 700; font-style: italic; color: #00FF00"></asp:Label> Your Register Data</legend>

    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    <br />
    </fieldset>
</td>
</tr>
<tr>
<td style="width: 716px">
<fieldset style="width: 456px">
<legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">Edit User Details</legend>
<table style="width: 669px; height: 278px">

<tr>
<td style="font-style: italic; color: #0099FF; height: 23px; width: 82px;"><i><b>Email:</b></i></td>
    <td style="width: 44px; height: 23px">
    <asp:Label ID="lblemail" runat="server"></asp:Label>
    <td style="width: 5px; height: 23px;">
        <asp:LinkButton ID="lbemal" runat="server" onclick="lbemal_Click" 
            CausesValidation="False">Edit</asp:LinkButton>
        </td>
    </td>
    <td style="width: 42px; height: 23px">
        <asp:TextBox ID="txtemail" runat="server" Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
    </td>
    <td style="width: 3px; height: 23px;">
        <asp:Button ID="upemail" runat="server" onclick="upemail_Click" Text="Update" 
            Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0099FF" />
    </td>
    <td style="height: 23px; width: 233px">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Enter The email" 
            style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Enter Valid Email" 
            style="font-weight: 700; font-style: italic; color: #FF0000" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
<td style="font-style: italic; color: #0099FF; width: 82px;"><i><b>Mobile No:</b></i></td>
    <td style="width: 44px">
    <asp:Label ID="lblmobino" runat="server"></asp:Label>
    <td style="width: 5px">
        <asp:LinkButton ID="lbmobino" runat="server" onclick="lbmobino_Click" 
            CausesValidation="False">Edit</asp:LinkButton></td>
    </td>
    <td style="width: 42px">
        <asp:TextBox ID="txtmobino" runat="server" Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
    </td>
    <td style="width: 3px">
        <asp:Button ID="upmobino" runat="server" onclick="upmobino_Click" Text="Update" 
            Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0099FF" />
    </td><td style="width: 233px">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtmobino" ErrorMessage="Enter The Mobile Number" 
            style="font-weight: bold; font-style: italic; color: #FF0000" 
            Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:CompareValidator
                ID="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer"
            ErrorMessage="Value must be a whole number" ControlToValidate="txtmobino" 
            Display="Dynamic" 
        style="font-weight: 700; font-style: italic; color: #FF0000"  ></asp:CompareValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        Display="Dynamic" ValidationExpression="[0-9]{10}" 
        ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtmobino" 
        style="font-weight: 700; font-style: italic; color: #FF0000"></asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td style="font-style: italic; color: #0099FF; width: 82px;"><i><b>Age:</b></i></td>
    <td style="width: 44px">
    <asp:Label ID="lblage" runat="server"></asp:Label>
      <td style="width: 5px">  <asp:LinkButton ID="lbage" runat="server" 
              onclick="lbage_Click" CausesValidation="False">Edit</asp:LinkButton></td>
    </td><td style="width: 42px">
        <asp:TextBox ID="txtage" runat="server" Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
    </td>
    <td style="width: 3px">
        <asp:Button ID="upage" runat="server" onclick="upage_Click" Text="Update" 
            Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0099FF" />
    </td><td style="width: 233px">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtage" ErrorMessage="Enter The Age" 
            style="font-weight: bold; font-style: italic; color: #FF0000" 
            Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                               ControlToValidate="txtage" Display="Dynamic" 
                               ErrorMessage="age Must In Between 13-90" MaximumValue="90" MinimumValue="13" 
                               style="font-weight: 700; font-style: italic; color: #FF0000" 
                               Type="Integer"></asp:RangeValidator></td>
</tr>
<tr>
<td style="font-style: italic; color: #0099FF; width: 82px;"><i><b>Country:</b></i></td>
    <td style="width: 44px">
    <asp:Label ID="lblcountry" runat="server"></asp:Label>
        <td style="width: 5px"><asp:LinkButton ID="lbcountry" runat="server" 
                onclick="lbcountry_Click" CausesValidation="False">Edit</asp:LinkButton></td>
    </td>
    <td style="width: 42px">
        <asp:DropDownList ID="ddlcountry" runat="server" Visible="False" 
            AutoPostBack="True" 
            style="font-weight: bold; font-style: italic; color: #0099FF">
            <asp:ListItem Value="0">---Select---</asp:ListItem>
            <asp:ListItem>india</asp:ListItem>
            <asp:ListItem>chaina</asp:ListItem>
        </asp:DropDownList>
    </td>
    <td style="width: 3px">
        <asp:Button ID="upcountry" runat="server" onclick="upcountry_Click" 
            Text="Update" Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0099FF" />
    </td><td style="width: 233px">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtage" ErrorMessage="Select The Country" 
            style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td style="font-style: italic; color: #0099FF; width: 82px;"><i><b>Gender:</b></i></td>
    <td style="width: 44px">
    <asp:Label ID="lblgender" runat="server"></asp:Label>
       <td style="width: 5px"> <asp:LinkButton ID="lbgender" runat="server" 
               onclick="lbgender_Click" CausesValidation="False">Edit</asp:LinkButton></td>
    </td>
    <td style="width: 42px">
        <asp:DropDownList ID="ddlgender" runat="server" Visible="False" 
            AutoPostBack="True" 
            style="font-weight: bold; font-style: italic; color: #0099FF">
            <asp:ListItem Value="0">---Select---</asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>MaleFemale</asp:ListItem>
        </asp:DropDownList>
    </td>
    <td style="width: 3px">
        <asp:Button ID="upgender" runat="server" onclick="upgender_Click" Text="Update" 
            Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0099FF" />
    </td><td style="width: 233px">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="ddlgender" ErrorMessage="Select Gender" 
            style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td style="width: 82px"></td><td style="width: 44px"></td><td style="width: 5px">
    &nbsp;</td>
</tr>
</table>
</fieldset>
</td>
<td style="width: 347px">


    <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" 
        DataFile="~/adamountadd.xml"></asp:XmlDataSource>


</td>
</tr>
<tr>

<td colspan="2">
<center>
<br />
<br />
    <asp:AdRotator ID="AdRotator2" runat="server" DataSourceID="XmlDataSource2" />
    <asp:XmlDataSource ID="XmlDataSource2" runat="server" 
        DataFile="~/phonebookadd.xml"></asp:XmlDataSource>
        <br />
</center>
</td>
</tr>
</table>
</center>
</body>
</html>
</asp:Content>

