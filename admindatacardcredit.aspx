<%@ Page Title="" Language="C#" MasterPageFile="~/Manage.master" AutoEventWireup="true" CodeFile="admindatacardcredit.aspx.cs" Inherits="admindatacardcredit" %>

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
        onclick="btnlogout_Click" style="color: #0099FF" 
        CausesValidation="False" /></td>
</tr>
</table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
    <table>
    <tr>
    <td style="width: 391px">
    <fieldset style="width: 251px">
<legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">
    <asp:Image ID="Image3" runat="server" Height="32px" 
        ImageUrl="~/admin images/database-logo.png" Width="51px" />Database Settings</legend>
<table style="width: 233px; height: 156px;">
<tr>
<td style="width: 250px; text-align: justify;">
    &nbsp;&nbsp;&nbsp;<asp:Image ID="Image4" runat="server" Height="34px" 
        ImageUrl="~/admin images/user.png" Width="34px" />
    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" style="text-align: right; font-style: italic; font-weight: bold;" 
        onclick="LinkButton1_Click" CausesValidation="False">User register Data</asp:LinkButton></td>
</tr>
<tr>
<td style="width: 250px; text-align: justify; height: 42px;">
    &nbsp;&nbsp;
    <asp:Image ID="Image5" runat="server" Height="34px" 
        ImageUrl="~/admin images/reccharge.png" Width="34px" />
    &nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" style="text-align: right; font-style: italic; font-weight: bold;" 
        onclick="LinkButton2_Click" CausesValidation="False">User&#39;s Recharge Data</asp:LinkButton>
</td>
</tr>
<tr>
<td style="width: 250px; text-align: justify; height: 42px;">
    &nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image6" runat="server" Height="34px" 
        ImageUrl="~/admin images/dth-recharge-one.png" Width="34px" />
    &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" style="text-align: right; font-style: italic; font-weight: bold;" 
        onclick="LinkButton4_Click" CausesValidation="False">DTH Recharge</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;
</td>
</tr>
<tr>
<td style="width: 250px; text-align: justify;">
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
        
        <br />
        <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click">View Data Card Recharge Vai Wallet</asp:LinkButton>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSourceusername" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" 
            SelectCommand="SELECT [User_Name] FROM [UserData]"></asp:SqlDataSource>
    
    
        <span style="color: #0099FF"><strong><em>Search By UserName:
        Name:
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
            <legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #6699FF">
                Data Card Recharge vai Credit Card </legend>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" 
                
                
                
                SelectCommand="SELECT * FROM [DataCardCreditPayment] WHERE ([User_Name] = @User_Name)">
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
                    <asp:BoundField DataField="Operator" HeaderText="Operator" 
                        SortExpression="Operator" />
                    <asp:BoundField DataField="Datacardno" HeaderText="Datacardno" 
                        SortExpression="Datacardno" />
                    <asp:BoundField DataField="Circle" HeaderText="Circle" 
                        SortExpression="Circle" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" 
                        SortExpression="Amount" />
                    <asp:BoundField DataField="Paymentoption" HeaderText="Paymentoption" 
                        SortExpression="Paymentoption" />
                    <asp:BoundField DataField="Typecard" HeaderText="Typecard" 
                        SortExpression="Typecard" />
                    <asp:BoundField DataField="Date" HeaderText="Date" 
                        SortExpression="Date" />
                    <asp:BoundField DataField="Time" HeaderText="Time" 
                        SortExpression="Time" />
                    <asp:BoundField DataField="Status" HeaderText="Status" 
                        SortExpression="Status" />
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
        &nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #0099FF"><strong><asp:Label ID="lbwallet" runat="server" 
            style="font-weight: 700; font-style: italic; color: #0000FF"></asp:Label>
    </strong></span>
&nbsp;&nbsp;&nbsp;
           </div>
    <br />


    <table>
    <tr>
    
    <td style="width: 711px">
    
    </td>
  </tr>


  <table>
  <tr>
  <td style="width: 302px">
  <fieldset>
    <legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">
        DTH Recharge Vai Credit Card
    </legend>
   
    <asp:SqlDataSource ID="rechdataSqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" 
        
            
            
          
          
          SelectCommand="SELECT * FROM [DataCardCreditPayment] WHERE (([Amount] &gt;= @Amount) AND ([Amount] &lt;= @Amount2))">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlamount1" Name="Amount" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="ddlamount2" Name="Amount2" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        </asp:SqlDataSource>

        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="rechdataSqlDataSource1" Height="208px" Width="878px" 
            AllowPaging="True" >
        <Columns>
            <asp:BoundField DataField="User_Name" HeaderText="User_Name" 
                SortExpression="User_Name" />
            <asp:BoundField DataField="Operator" HeaderText="Operator" 
                SortExpression="Operator" />
            <asp:BoundField DataField="Datacardno" HeaderText="Datacardno" 
                SortExpression="Datacardno" />
            <asp:BoundField DataField="Circle" HeaderText="Circle" 
                SortExpression="Circle" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" 
                SortExpression="Amount" />
            <asp:BoundField DataField="Paymentoption" HeaderText="Paymentoption" 
                SortExpression="Paymentoption" />
            <asp:BoundField DataField="Typecard" HeaderText="Typecard" 
                SortExpression="Typecard" />
            <asp:BoundField DataField="Date" HeaderText="Date" 
                SortExpression="Date" />
            <asp:BoundField DataField="Time" HeaderText="Time" 
                SortExpression="Time" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
        </Columns>
    </asp:GridView>
     </fieldset>
    
  </td>

  </tr>
    </table>
    </table>

        <br />
</center>

</asp:Content>

