<%@ Page Title="" Language="C#" MasterPageFile="~/Account.master" AutoEventWireup="true" CodeFile="Recharge.aspx.cs" Inherits="Recharge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <html>
<body>


<table>
<tr>
<td>
    <asp:Label ID="lblwelcome" runat="server" Text="Welcome:" 
        style="font-weight: bold; font-style: italic; color: #0099FF" 
        Visible="False"></asp:Label></td>
    <td style="width: 30px">
        <asp:Label ID="lbluser" runat="server" Text="Label" 
            style="font-weight: bold; font-style: italic; color: #0000CC" 
            Visible="False"></asp:Label></td>
            <td>
                <asp:Label ID="wallamount" runat="server" Text="MyWallet:" 
                    style="font-weight: bold; font-style: italic; color: #0099FF" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblwallet" runat="server" 
                    style="font-weight: bold; font-style: italic; color: #0000CC" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="rs" runat="server" Text="Rs" 
                    style="font-weight: bold; font-style: italic; color: #0000CC" 
                    Visible="False"></asp:Label>
            </td>
        <td>
            <asp:Button ID="btnlogout" runat="server" Text="Logout" 
                onclick="btnlogout_Click" 
                style="font-weight: bold; font-style: italic; color: #0099FF" 
                Visible="False" CausesValidation="False" /></td>
</tr>
</table>
</body>

</html>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
<body>
<br />
<center>
<table>
<tr>
<td rowspan="2" style="width: 399px; height: 287px;">
<fieldset>
<legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">ONLINE MOBILE RECHARGE</legend>
<table style="width: 378px; height: 184px; margin-right: 0px; margin-left: 0px;">
<tr>
<td style="width: 152px; font-style: italic; color: #0099FF;"><i><b>Service Type: 
    </b></i> </td><td style="width: 136px">
    <asp:DropDownList ID="ddlservicetype" runat="server" 
            style="font-weight: bold; font-style: italic; color: #0099FF" 
            AutoPostBack="True">
        <asp:ListItem Value="0">----Select Plz---</asp:ListItem>
        <asp:ListItem Value="1">Mobile Recharge</asp:ListItem>
        <asp:ListItem Value="2">DTH Recharge</asp:ListItem>
        <asp:ListItem Value="3">Data Card</asp:ListItem>
    </asp:DropDownList>
</td>
<td style="width: 134px">&nbsp;</td>
</tr>
<tr>
<td style="width: 152px; font-style: italic; color: #0099FF; height: 26px;">
    <i><b>Mobile Number: 
</b></i> 
</td>
<td style="width: 136px; height: 26px;">
    <asp:TextBox ID="txtmobino" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox></td>
    <td style="width: 134px; height: 26px;">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Enter Mobile no" 
            style="font-weight: bold; font-style: italic; color: #FF0000" 
            ControlToValidate="txtmobino" Display="Dynamic"></asp:RequiredFieldValidator>
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
<td style="width: 152px; font-style: italic; color: #0099FF; height: 26px;"><i><b>Operator: </b>
    </i> </td>
<td style="width: 136px; height: 26px;">
    <asp:DropDownList ID="ddlopetator" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0099FF" 
        AutoPostBack="True">
        <asp:ListItem Value="0">---Select---</asp:ListItem>
        <asp:ListItem Value="1">Aircel</asp:ListItem>
        <asp:ListItem Value="2">Airtel</asp:ListItem>
        <asp:ListItem Value="3">Bsnl</asp:ListItem>
        <asp:ListItem Value="4">Dolphine</asp:ListItem>
        <asp:ListItem Value="5">Idea</asp:ListItem>
        <asp:ListItem Value="6">Vodafone</asp:ListItem>
    </asp:DropDownList>
</td>
<td style="width: 134px; height: 26px;">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="ddlopetator" Display="Dynamic" 
        ErrorMessage="Select the Operator" InitialValue="0" 
        style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td style="width: 152px; font-style: italic; color: #0099FF;">
    <i><b>Circle: 
</b></i> 
</td>
<td style="width: 136px">
    <asp:DropDownList ID="ddlcircle" runat="server" 
        style="font-weight: bold; font-style: italic; color: #0099FF" 
        AutoPostBack="True">
        <asp:ListItem Value="0">---Select---</asp:ListItem>
        <asp:ListItem>Mumbai &amp; Goa</asp:ListItem>
    </asp:DropDownList>
</td>
<td style="width: 134px">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="ddlcircle" Display="Dynamic" 
        ErrorMessage="Select the Circle" InitialValue="0" 
        style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td style="width: 152px">
   
    <asp:LinkButton ID="lblviewphonebook" runat="server" 
        onclick="lblviewphonebook_Click" 
        style="font-weight: 700; font-style: italic" CausesValidation="False">View Phone Book</asp:LinkButton>
   
    </td>
<td style="width: 136px">
    <asp:ImageButton ID="ImageButton1" runat="server" Height="49px" 
        ImageUrl="~/recharge images/button recharge.gif" Width="127px" 
        onclick="ImageButton1_Click" /></td>
    <td style="width: 134px"></td>
</tr>
</table>
</fieldset>
<br />
<fieldset style="width: 430px">
<legend style="font-weight: 700; font-style: italic; color: #FFFFFF; font-size: x-large; background-color: #0099FF">mobile recharge 
    help</legend>

        <strong><em><span style="color: #0099FF; background-color: #FFFFFF">Follow these simple steps to recharge: 
    </span> <br style="color: #0099FF; background-color: #FFFFFF" />

    <span style="color: #0099FF; background-color: #FFFFFF">1.	Enter Mobile No. / Subscriber ID</span><br 
        style="color: #0099FF; background-color: #FFFFFF" />
    <span style="color: #0099FF; background-color: #FFFFFF">2.	Enter your Recharge / E-Top Up Amount 
    </span> <br style="color: #0099FF; background-color: #FFFFFF" />
    <span style="color: #0099FF; background-color: #FFFFFF">3.	Select your Login Type (Login or Guest)</span><br 
        style="color: #0099FF; background-color: #FFFFFF" /> 
    <span style="color: #0099FF; background-color: #FFFFFF">4.	Select the payment option, make payment & get your recharge instantly</span></em></strong><br />
</center>
</fieldset>

</td>
<td style="height: 287px; width: 264px">
    <asp:Panel ID="Panel1" runat="server" Visible="False">
 
<fieldset>
<legend style="font-size: x-large; color: #FFFFFF"><strong><em>
    <span style="background-color: #0099FF">Your Phone Book</span></em></strong></legend>
    <asp:Label ID="lblphone1" runat="server" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" 
        SelectCommand="SELECT [Friend_Name], [Contact_No] FROM [phonebook] WHERE ([User_Name] = @User_Name)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblphone1" Name="User_Name" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Friend_Name" HeaderText="Friend_Name" 
                SortExpression="Friend_Name" />
            <asp:BoundField DataField="Contact_No" HeaderText="Contact_No" 
                SortExpression="Contact_No" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    </fieldset>
       </asp:Panel>
    </td>
<td style="width: 156px; height: 287px;">
<table>
<tr>
<td>
 <video controls width="345px" height="191px">
  <source src="video/abc.mp4" type="video/mp4">
  <source src="video/abc.ogg" type="video/ogg">
  </video>

</td>
</tr>

<tr>
<td>
    <asp:ImageButton ID="ImageButton2" runat="server" Height="254px" 
        ImageUrl="~/recharge images/add3.jpg" onclick="ImageButton2_Click" 
        Width="305px" style="margin-left: 0px" />

</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>

</asp:Content>

