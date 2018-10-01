<%@ Page Title="" Language="C#" MasterPageFile="~/Manage.master" AutoEventWireup="true" CodeFile="rechargehistorydata.aspx.cs" Inherits="rechargehistorydata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <table>
<tr>
<td>
    <asp:Label ID="lblwelcome" runat="server" 
        style="font-weight: 700; font-style: italic; color: #0099FF">Welcome:</asp:Label></td>
<td>
    <asp:Label ID="lbluser" runat="server" style="color: #99FF33"></asp:Label></td>
<td>
    <asp:Button ID="btnlogout" runat="server" Text="Logout" 
        onclick="btnlogout_Click" 
        style="color: #0099FF; font-style: italic; font-weight: bold;" 
        CausesValidation="False" /></td>
</tr>
</table>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
    <table>
    <tr>
    <td style="width: 391px">
    <fieldset style="width: 251px">
<legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">
    <asp:Image ID="Image3" runat="server" Height="32px" 
        ImageUrl="~/admin images/database-logo.png" Width="51px" />Database Settings</legend>
</center>
<table style="width: 233px; height: 156px;">
<tr>
<td style="width: 250px; text-align: left;">
    &nbsp;&nbsp;&nbsp;<asp:Image ID="Image4" runat="server" Height="34px" 
        ImageUrl="~/admin images/user.png" Width="34px" />
    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" style="text-align: right; font-style: italic; font-weight: bold;" 
        onclick="LinkButton1_Click" CausesValidation="False">User register Data</asp:LinkButton></td>
</tr>
<tr>
<td style="width: 250px; text-align: left;">
    &nbsp;&nbsp;
    <asp:Image ID="Image6" runat="server" Height="34px" 
        ImageUrl="~/admin images/dth-recharge-one.png" Width="34px" />
    &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" style="text-align: right; font-style: italic; font-weight: bold;" 
        onclick="LinkButton4_Click" CausesValidation="False">DTH Recharge</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;
</td>
</tr>
<tr>
<td style="width: 250px; text-align: left;">
    &nbsp;
    <asp:Image ID="Image7" runat="server" Height="34px" 
        ImageUrl="~/admin images/datacard-2-512.png" Width="34px" />
    &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" style="text-align: right; font-style: italic; font-weight: bold;" 
        onclick="LinkButton5_Click" CausesValidation="False">Data Card Recharge</asp:LinkButton>
    &nbsp;&nbsp;
</td>
</tr>
    <center>
<tr>
<td style="width: 250px; text-align: left;">
    &nbsp; &nbsp;<asp:Image ID="Image8" runat="server" Height="34px" 
        ImageUrl="~/admin images/faq-icon.png" Width="34px" />
&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" style="text-align: right; font-style: italic; font-weight: bold;" 
        onclick="LinkButton3_Click" CausesValidation="False">User FAQ&#39;S</asp:LinkButton>
</td>
</tr>
</table>
</fieldset>
</td>
   
    <td>
        <asp:LinkButton ID="LinkButton6" runat="server" 
            style="font-weight: bold; font-style: italic" onclick="LinkButton6_Click1" 
            CausesValidation="False">View Recharge Vai Credit Card</asp:LinkButton>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSourceusername" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" 
            SelectCommand="SELECT [User_Name] FROM [UserData]"></asp:SqlDataSource>
    
    
        <span style="color: #0099FF"><strong><em>Search By UserName:
        </em></strong></span>
        <asp:DropDownList ID="ddlusername" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSourceusername" DataTextField="User_Name" 
            DataValueField="User_Name" Height="19px" Width="110px" style="font-weight: 700; font-style: italic; color: #0099FF" 
            >
        </asp:DropDownList>
        &nbsp;<asp:Label ID="lbluserwall" runat="server" 
            style="font-weight: 700; font-style: italic; color: #0000FF"></asp:Label>
        <br />
        <br />
<fieldset style="width: 658px">
            <legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #6699FF">Recharge vai Wallet </legend>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" 
                SelectCommand="SELECT * FROM [rechdata] WHERE ([User_Name] = @User_Name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlusername" Name="User_Name" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="User_Name" HeaderText="User_Name" 
                        SortExpression="User_Name" />
                    <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" 
                        SortExpression="Mobile_No" />
                    <asp:BoundField DataField="Operator" HeaderText="Operator" 
                        SortExpression="Operator" />
                    <asp:BoundField DataField="Circle" HeaderText="Circle" 
                        SortExpression="Circle" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" 
                        SortExpression="Amount" />
                    <asp:BoundField DataField="Pay_Option" HeaderText="Pay_Option" 
                        SortExpression="Pay_Option" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                </Columns>
            </asp:GridView>
        </fieldset></td>
    </tr>
    </table>

<br />

       <div><span style="color: #0099FF"><strong><em>Search By Amount:</em></strong></span>  &nbsp;&nbsp;<asp:DropDownList 
               ID="ddlamount1" runat="server" AutoPostBack="True" 
               style="font-weight: bold; font-style: italic; color: #0099FF">
            <asp:ListItem Value="10">10</asp:ListItem>
            <asp:ListItem Value="50">50</asp:ListItem>
            <asp:ListItem Value="100">100</asp:ListItem>
            <asp:ListItem Value="300">300</asp:ListItem>
            <asp:ListItem Value="500">500</asp:ListItem>
            <asp:ListItem Value="1000">1000</asp:ListItem>
            <asp:ListItem Value="2000">2000</asp:ListItem>
        </asp:DropDownList>

        &nbsp;&nbsp;&nbsp;

        <asp:DropDownList ID="ddlamount2" runat="server" AutoPostBack="True" 
               style="font-weight: bold; font-style: italic; color: #0099FF">
            <asp:ListItem Value="10">10</asp:ListItem>
            <asp:ListItem Value="50">50</asp:ListItem>
            <asp:ListItem Value="100">100</asp:ListItem>
            <asp:ListItem Value="300">300</asp:ListItem>
            <asp:ListItem Value="500">500</asp:ListItem>
            <asp:ListItem Value="1000">1000</asp:ListItem>
            <asp:ListItem Value="2000">2000</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp; 
           <asp:Label ID="lbwallet" runat="server" 
            style="font-weight: 700; font-style: italic; color: #0000FF"></asp:Label>&nbsp;&nbsp;
           </div>
    <br />


    <table>
    <tr>
    
    <td style="width: 711px">
    
    </td>
  </tr>


  <table>
  <tr>
  <td style="width: 272px">
  <fieldset>
    <legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">
    Recharge Vai Wallet
    </legend>
   
    <asp:SqlDataSource ID="rechdataSqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" 
        
            
            SelectCommand="SELECT * FROM [rechdata] WHERE (([Amount] &gt;= @Amount) AND ([Amount] &lt;= @Amount2))">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlamount1" Name="Amount" 
                PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="ddlamount2" Name="Amount2" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        </asp:SqlDataSource>

        <br />
        <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="rechdataSqlDataSource1" Height="208px" Width="637px" 
            AllowPaging="True" onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="User_Name" HeaderText="User_Name" 
                SortExpression="User_Name" />
            <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" 
                SortExpression="Mobile_No" />
            <asp:BoundField DataField="Operator" HeaderText="Operator" 
                SortExpression="Operator" />
            <asp:BoundField DataField="Circle" HeaderText="Circle" 
                SortExpression="Circle" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" 
                SortExpression="Amount" />
            <asp:BoundField DataField="Date" HeaderText="Date" 
                SortExpression="Date" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
        </Columns>
    </asp:GridView>
    </center>
     </fieldset>
    
  </td>

  </tr>
    </table>
    </table>

        <br />
</center>
</center>
</center>
</center>
</center>
</asp:Content>

