<%@ Page Title="" Language="C#" MasterPageFile="~/Manage.master" AutoEventWireup="true" CodeFile="datauser.aspx.cs" Inherits="datauser" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <html>
<body>
<center>
 <table>
<tr>
<td>
    <asp:Label ID="lblwelcome" runat="server" 
        style="font-weight: 700; font-style: italic; color: #0099FF">Welcome:</asp:Label></td>
<td>
    <asp:Label ID="lbluser" runat="server" style="color: #99FF33"></asp:Label></td>
<td>
    <asp:Button ID="btnlogout" runat="server" Text="Logout" 
        onclick="btnlogout_Click" style="color: #0099FF" /></td>
</tr>
</table>
</center>
</body>
</html>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <html>
<body>
<br />
<br />
<center>
<fieldset style="height: 275px">
<legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">
    User Data</legend>
<table style="width: 1142px; height: 178px">
<tr>
<td rowspan="3" style="width: 291px">
<fieldset style="width: 242px">
<legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">
    <asp:Image ID="Image4" runat="server" Height="32px" 
        ImageUrl="~/admin images/database-logo.png" Width="51px" />Database Settings</legend>
<table style="width: 240px; height: 156px;">

<tr>
<td style="width: 264px; text-align: justify;">
    &nbsp;&nbsp;
    <asp:Image ID="Image6" runat="server" Height="34px" 
        ImageUrl="~/admin images/reccharge.png" Width="34px" />
    &nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" style="text-align: right" 
        onclick="LinkButton2_Click">User&#39;s Recharge Data</asp:LinkButton>
</td>
</tr>
<tr>
<td style="width: 264px; text-align: justify;">
    &nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image7" runat="server" Height="34px" 
        ImageUrl="~/admin images/dth-recharge-one.png" Width="34px" />
    &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" style="text-align: right" 
        onclick="LinkButton4_Click">DTH Recharge</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;
</td>
</tr>
<tr>
<td style="width: 264px; text-align: justify;">
    &nbsp;
    <asp:Image ID="Image8" runat="server" Height="34px" 
        ImageUrl="~/admin images/datacard-2-512.png" Width="34px" />
    &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" style="text-align: right" 
        onclick="LinkButton5_Click">Data Card Recharge</asp:LinkButton>
    &nbsp;&nbsp;
</td>
</tr>
<tr>
<td style="width: 264px; text-align: justify;">
    &nbsp; &nbsp;<asp:Image ID="Image9" runat="server" Height="34px" 
        ImageUrl="~/admin images/faq-icon.png" Width="34px" />
&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" style="text-align: right" 
        onclick="LinkButton3_Click">User FAQ&#39;S</asp:LinkButton>
</td>
</tr>
</table>
</fieldset>

</td>
<td style="height: 30px; width: 409px; font-style: italic; color: #0099FF;"><i><b>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Search By Gender:</b></i></td>
    <td style="height: 30px; width: 278px;">
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
            style="font-weight: bold; font-style: italic; color: #0099FF">
            <asp:ListItem Selected="True">----Select Plz----</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
    </td>
    <td style="width: 319px; font-style: italic; color: #0099FF; height: 30px;"></td>
    <td style="height: 30px; width: 210px;">
        </td>
</tr>
<tr>
<td class="style1" 
        
        
        
        style="width: 409px; height: 23px; font-weight: bold; font-style: italic; color: #0099FF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search By Date:</td>
    <td class="style1" 
        style="width: 278px; height: 23px;">
        <asp:DropDownList ID="ddlfromdate" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSourcedate" DataTextField="RegisterDate" 
            DataValueField="RegisterDate" Height="25px" Width="144px" 
            style="font-weight: bold; font-style: italic; color: #0099FF" 
            >
            
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourcedate" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" 
            SelectCommand="SELECT DISTINCT [RegisterDate] FROM [UserData]">
        </asp:SqlDataSource>
        </td>
    <td style="height: 23px; width: 319px;">
        <asp:DropDownList ID="ddltodate" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSourcedate" DataTextField="RegisterDate" 
            DataValueField="RegisterDate" Height="26px" Width="141px" 
            style="font-weight: bold; font-style: italic; color: #0099FF">
        </asp:DropDownList>
        </td>
        <td style="width: 210px"></td>
</tr>
<tr>
<td style="width: 409px">
    &nbsp;
    <asp:Image ID="Image1" runat="server" Height="33px" 
        ImageUrl="~/admin images/all users.png" Width="50px" />
    <i><b>display total number of users:<asp:Label ID="tnouser" runat="server" Text="Label" 
        style="font-weight: bold; font-style: italic; color: #0033CC"></asp:Label>
    </b></i></td>
<td style="width: 278px"><i><b>
    <asp:Image ID="Image2" runat="server" Height="33px" 
        ImageUrl="~/admin images/User.png" Width="50px" />
    Total No of Male:<asp:Label ID="tnomale" runat="server" Text="Label" 
            style="font-weight: bold; font-style: italic; color: #0033CC"></asp:Label></b></i></td>
<td style="width: 319px"><i><b>
    <asp:Image ID="Image3" runat="server" Height="33px" 
        ImageUrl="~/admin images/female user logo.png" Width="50px" />
    total no of females:<asp:Label ID="tnofemale" runat="server" Text="Label" 
                style="font-weight: bold; font-style: italic; color: #0033CC"></asp:Label></b></i></td>
</tr>
</table>
</fieldset>
<fieldset style="font-weight: 700; font-style: italic; color: #666699">
<legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #0099FF">
User Data</legend>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
</fieldset>
<fieldset>
<legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #0099FF">Edit Data</legend>
<table>
<tr><td>
<table>
<tr>
<td style="width: 152px">
    <i><b style="color: #0099FF">Search By user name:</b></i></td>
<td>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" 
            SelectCommand="SELECT [User_Name] FROM [UserData]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="User_Name" 
            DataValueField="User_Name" 
            style="height: 22px; font-weight: bold; font-style: italic; color: #0099FF;">
        </asp:DropDownList>
    </td>
<td></td>
</tr>
<tr>
<td style="height: 26px; width: 152px; font-style: italic; color: #0099FF;"><i><b>Email</b></i></td><td style="height: 26px">
    <asp:Label ID="lblemail" runat="server" Text="Label" 
        style="font-style: italic; color: #0099FF"></asp:Label>
    <asp:LinkButton ID="lbemail" runat="server" onclick="lbemail_Click">Edit</asp:LinkButton>
    </td><td>
        <asp:TextBox ID="txtemail" runat="server" Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
        <asp:Button ID="btnemail" runat="server" onclick="btnemail_Click" Text="update" 
            Visible="False" 
            style="font-weight: bold; font-style: italic; color: #666699" />
    </td>
</tr>
<tr><td style="height: 26px; width: 152px; font-style: italic; color: #0099FF;"><i>
    <b>Username:</b></i></td><td style="height: 26px">
    <asp:Label ID="lblusername" runat="server" Text="Label" 
            style="font-style: italic; color: #0099FF"></asp:Label>
    <asp:LinkButton ID="lbusername" runat="server" onclick="lbusername_Click">Edit</asp:LinkButton>
    </td><td style="height: 26px">
        <asp:TextBox ID="txtusername" runat="server" Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
        <asp:Button ID="btnusername" runat="server" onclick="btnusername_Click" 
            Text="update" Visible="False" 
            style="font-weight: bold; font-style: italic; color: #666699" />
        <asp:Label ID="lblchekuser" runat="server" style="color: #666699"></asp:Label></td></tr>
<tr>
<td style="width: 152px; font-style: italic; color: #0099FF; height: 30px;"><i><b>password:</b></i></td>
    <td style="height: 30px">
    <asp:Label ID="lblpassword" runat="server" Text="Label" 
        style="font-style: italic; color: #0099FF"></asp:Label>
    <asp:LinkButton ID="lbpassword" runat="server" onclick="lbpassword_Click">Edit</asp:LinkButton>
    </td><td style="height: 30px">
        <asp:TextBox ID="txtpassword" runat="server" Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
        <asp:Button ID="btnpassword" runat="server" onclick="btnpassword_Click" 
            
            style="height: 26px; font-weight: bold; font-style: italic; color: #666699;" 
            Text="update" Visible="False" />
    </td>
</tr>
<tr>
<td style="width: 152px; font-style: italic; color: #0099FF;"><i><b>Mobile No:</b></i></td><td>
    <asp:Label ID="lblmobino" runat="server" Text="Label" 
        style="font-style: italic; color: #0099FF"></asp:Label>
    <asp:LinkButton ID="lbmobino" runat="server" onclick="lbmobino_Click">Edit</asp:LinkButton>
    </td><td>
        <asp:TextBox ID="txtmobino" runat="server" Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
        <asp:Button ID="btnmobino" runat="server" onclick="btnmobino_Click" 
            Text="update" Visible="False" 
            style="font-weight: bold; font-style: italic; color: #666699" />
    </td>
</tr>
<tr>
<td style="width: 152px; font-style: italic; color: #0099FF;"><i><b>Country:</b></i></td><td>
    <asp:Label ID="lblcountry" runat="server" Text="Label" 
        style="font-style: italic; color: #0099FF"></asp:Label>
    <asp:LinkButton ID="lbcountry" runat="server" onclick="lbcountry_Click">Edit</asp:LinkButton>
    </td><td>
        <asp:DropDownList ID="ddlcountry" runat="server" Visible="False" 
            style="color: #0099FF; font-weight: bold; font-style: italic">
        </asp:DropDownList>
        <asp:Button ID="btncountry" runat="server" onclick="btncountry_Click" 
            Text="update" Visible="False" 
            style="font-weight: bold; font-style: italic; color: #666699" />
    </td>
</tr>
<tr>
<td style="width: 152px; font-style: italic; color: #0099FF;"><i><b>Gender:</b></i></td><td>
    <asp:Label ID="lblgender" runat="server" Text="Label" 
        style="font-style: italic; color: #0099FF"></asp:Label>
    <asp:LinkButton ID="lbgender" runat="server" onclick="lbgender_Click">Edit</asp:LinkButton>
    </td><td>
        <asp:DropDownList ID="ddlgender" runat="server" Visible="False" 
            style="color: #0099FF; font-weight: bold; font-style: italic">
        </asp:DropDownList>
        <asp:Button ID="btngender" runat="server" onclick="btngender_Click" 
            Text="update" Visible="False" 
            style="font-weight: bold; font-style: italic; color: #666699" />
    </td>
</tr>
<tr>
<td style="height: 30px; width: 152px; font-style: italic; color: #0099FF;"><i><b>Age:</b></i></td><td style="height: 30px">
    <asp:Label ID="lblage" runat="server" Text="Label" 
        style="font-style: italic; color: #0099FF"></asp:Label>
    <asp:LinkButton ID="lbage" runat="server" onclick="lbage_Click">Edit</asp:LinkButton>
    </td><td style="height: 30px">
        <asp:TextBox ID="txtage" runat="server" Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
        <asp:Button ID="btnage" runat="server" onclick="btnage_Click" Text="update" 
            Visible="False" 
            style="font-weight: bold; font-style: italic; color: #666699" />
    </td>
</tr>
<tr>
<td style="width: 152px; font-style: italic; color: #0099FF;"><i><b>Register Time:</b></i></td><td>
    <asp:Label ID="lbltime" runat="server" Text="Label" 
        style="font-style: italic; color: #0099FF"></asp:Label>
    <asp:LinkButton ID="lbtime" runat="server" onclick="lbtime_Click">Edit</asp:LinkButton>
    </td><td>
        <asp:TextBox ID="txttime" runat="server" Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
        <asp:Button ID="btntime" runat="server" onclick="btntime_Click" Text="update" 
            Visible="False" 
            style="font-weight: bold; font-style: italic; color: #666699" />
    </td>
</tr>
<tr>
<td style="width: 152px; font-style: italic; color: #0099FF;"><i><b>Register Date:</b></i></td><td>
    <asp:Label ID="lbldate" runat="server" Text="Label" 
        style="font-style: italic; color: #0099FF"></asp:Label>
    <asp:LinkButton ID="lbdate" runat="server" onclick="lbdate_Click">Edit</asp:LinkButton>
    </td><td>
        <asp:TextBox ID="txtdate" runat="server" Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
        <asp:Button ID="btndate" runat="server" onclick="btndate_Click" Text="update" 
            Visible="False" 
            style="font-weight: bold; font-style: italic; color: #666699" />
    </td>
</tr>
<tr>
<td style="width: 152px">
    <asp:Button ID="Addnew" runat="server" Text="Add New" onclick="Button1_Click" 
        style="font-weight: bold; font-style: italic; color: #0099FF" /></td><td>
        <asp:Button ID="Button2" runat="server" Text="DELETE" onclick="Button2_Click" 
            style="font-weight: bold; font-style: italic; color: #0099FF" />
    </td><td>
        <asp:Button ID="btndisplayall" runat="server" Height="25px" 
            onclick="btndisplayall_Click" 
            style="font-weight: bold; font-style: italic; color: #0099FF" 
            Text="Display all Users" Width="125px" />
&nbsp;&nbsp;
        <asp:Button ID="btnrefresh" runat="server" onclick="btnrefresh_Click" 
            Text="Refresh" 
            style="font-weight: bold; font-style: italic; color: #0099FF" />
        <asp:Label ID="lblid" runat="server"></asp:Label>
    </td>
</tr>
</table>
</td>
<td>
    <asp:Panel ID="Panel1" runat="server" Visible="False">
    <table style="width: 357px; height: 270px;">
  <tr><td style="font-style: italic; color: #0099FF"><i><b>Email:</b></i></td><td>
      <asp:TextBox ID="txtemail1" runat="server" 
          style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
      </td><td></td></tr>
    <tr><td style="font-style: italic; color: #0099FF"><i><b>username:</b></i></td><td>
        <asp:TextBox ID="txtusername1" runat="server" 
            style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
        <asp:Label ID="lblchekuser2" runat="server" Text="Label" Visible="False" 
            style="color: #666699"></asp:Label>
        </td><td></td></tr>
      <tr><td style="font-style: italic; color: #0099FF"><i><b>Password:</b></i></td><td>
          <asp:TextBox ID="txtpassword1" runat="server" 
              style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
          </td><td></td></tr>
        <tr><td style="font-style: italic; color: #0099FF"><i><b>Mobile No:</b></i></td><td>
            <asp:TextBox ID="txtmobino1" runat="server" 
                style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
            </td><td></td></tr>
          <tr><td style="font-style: italic; color: #0099FF"><i><b>Country:</b></i></td><td>
              <asp:DropDownList ID="ddlcountry1" runat="server" 
                  style="color: #0099FF; font-weight: bold; font-style: italic">
                  <asp:ListItem>India</asp:ListItem>
                  <asp:ListItem>China</asp:ListItem>
                  <asp:ListItem>Russia</asp:ListItem>
              </asp:DropDownList>
              </td><td></td></tr>
            <tr><td style="font-style: italic; color: #0099FF"><i><b>Gender:</b></i></td><td>
                <asp:DropDownList ID="ddlgender1" runat="server" 
                    style="color: #0099FF; font-weight: bold; font-style: italic">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                </td><td></td></tr>
            <tr><td style="font-style: italic; color: #0099FF"><i><b>Age:</b></i></td><td style="font-weight: 700">
                <asp:TextBox ID="txtage1" runat="server" 
                    style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
                </td><td></td></tr>
            <tr><td style="font-style: italic; color: #0099FF"><i><b>Register Time:</b></i></td><td>
                <asp:TextBox ID="txttime1" runat="server" 
                    style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
                </td><td></td></tr>
            <tr><td style="font-style: italic; color: #0099FF"><i><b>Register Date:</b></i></td><td>
                <asp:TextBox ID="txtdate1" runat="server" 
                    style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
                </td><td></td></tr>
             <tr><td>&nbsp;</td><td>
                 <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" Text="Add" />
                 </td><td></td></tr>



    </table>
    </asp:Panel>
</td>
</tr>
</table>

</fieldset>
    </center>
    <br />
    <fieldset>
    <legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #0099FF">All User Data</legend>
     <center>
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" 
                SelectCommand="SELECT * FROM [UserData]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" 
                GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="User_Name" HeaderText="User_Name" 
                        SortExpression="User_Name" />
                    <asp:BoundField DataField="Password" HeaderText="Password" 
                        SortExpression="Password" />
                    <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" 
                        SortExpression="Mobile_No" />
                    <asp:BoundField DataField="Country" HeaderText="Country" 
                        SortExpression="Country" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" 
                        SortExpression="Gender" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="RegisterTime" HeaderText="RegisterTime" 
                        SortExpression="RegisterTime" />
                    <asp:BoundField DataField="RegisterDate" HeaderText="RegisterDate" 
                        SortExpression="RegisterDate" />
                    <asp:BoundField DataField="EasyWallet" HeaderText="EasyWallet" 
                        SortExpression="EasyWallet" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </asp:Panel>
    </center>
    </fieldset>
</body>

</html>
</asp:Content>

