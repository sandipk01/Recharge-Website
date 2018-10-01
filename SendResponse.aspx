<%@ Page Title="" Language="C#" MasterPageFile="~/Manage.master" AutoEventWireup="true" CodeFile="SendResponse.aspx.cs" Inherits="SendResponse" %>

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
        style="color: #0099FF; font-weight: bold; font-style: italic;" 
        CausesValidation="False" /></td>
</tr>
</table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
<table>
<tr>
<td>


<fieldset>
<legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">
    <asp:Image ID="Image3" runat="server" Height="32px" 
        ImageUrl="~/admin images/database-logo.png" Width="51px" />Database Settings</legend>
<table style="width: 349px; height: 156px;">
<tr>
<td style="width: 264px; text-align: justify;">
    &nbsp;&nbsp;&nbsp;<asp:Image ID="Image4" runat="server" Height="34px" 
        ImageUrl="~/admin images/user.png" Width="34px" />
    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" style="text-align: right; font-weight: bold; font-style: italic;" 
        onclick="LinkButton1_Click" CausesValidation="False">User register Data</asp:LinkButton></td>
</tr>
<tr>
<td style="width: 264px; text-align: justify;">
    &nbsp;&nbsp;
    <asp:Image ID="Image5" runat="server" Height="34px" 
        ImageUrl="~/admin images/reccharge.png" Width="34px" />
    &nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" style="text-align: right; font-weight: bold; font-style: italic;" 
        onclick="LinkButton2_Click" CausesValidation="False">User&#39;s Recharge Data</asp:LinkButton>
</td>
</tr>
<tr>
<td style="width: 264px; text-align: justify;">
    &nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image6" runat="server" Height="34px" 
        ImageUrl="~/admin images/dth-recharge-one.png" Width="34px" />
    &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" style="text-align: right; font-weight: bold; font-style: italic;" 
        onclick="LinkButton4_Click" CausesValidation="False">DTH Recharge</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;
</td>
</tr>
<tr>
<td style="width: 264px; text-align: justify;">
    &nbsp;
    <asp:Image ID="Image7" runat="server" Height="34px" 
        ImageUrl="~/admin images/datacard-2-512.png" Width="34px" />
    &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" style="text-align: right; font-weight: bold; font-style: italic;" 
        onclick="LinkButton5_Click" CausesValidation="False">Data Card Recharge</asp:LinkButton>
    &nbsp;&nbsp;
</td>
</tr>
<tr>
<td style="width: 264px; text-align: justify;">
    &nbsp; &nbsp;<asp:Image ID="Image8" runat="server" Height="34px" 
        ImageUrl="~/admin images/faq-icon.png" Width="34px" />
&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" style="text-align: right; font-weight: bold; font-style: italic;" 
        onclick="LinkButton3_Click" CausesValidation="False">User FAQ&#39;S</asp:LinkButton>
</td>
</tr>
</table>
</fieldset>

</td>

<td style="height: 151px; width: 299px;">
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" 
        SelectCommand="SELECT [User_Name] FROM [UserData]"></asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span style="color: #0099FF"><strong><em>Select User Name:</em></strong></span> 
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource2" DataTextField="User_Name" 
        DataValueField="User_Name" 
        style="font-style: italic; font-weight: 700; color: #0099FF">
    </asp:DropDownList>
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="1000">
            </asp:Timer>
            <asp:Label ID="lbltime" runat="server" Text="Label" Visible="False"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbldate" 
                runat="server" Text="Label" Visible="False"></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
</td>
<td style="height: 151px; width: 246px;">
<fieldset>
<legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #0099FF">Send Response</legend>

    <asp:TextBox ID="txtsend" runat="server" Height="136px" TextMode="MultiLine" 
        Width="297px" style="color: #0099FF"></asp:TextBox>
    <br />
    
    <asp:Button ID="btnsend" runat="server" Text="Send" onclick="btnsend_Click" 
        style="font-weight: 700; font-style: italic; color: #0099FF" />
    </fieldset>
</td>
</tr>
</table>
<table>
<tr>
<td>
<fieldset>
<legend style="font-weight: 700; font-style: italic; color: #FFFFFF; font-size: x-large; background-color: #0099FF">User Comments:</legend>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" 
        
        
        SelectCommand="SELECT [Date], [Time], [Comment] FROM [USerQuerys] WHERE ([User_Name] = @User_Name) ORDER BY [Date], [Time], [Comment]">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="User_Name" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="background-color: #FAFAD2;color: #284775;">
                <td>
                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                </td>
                <td>
                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                </td>
                <td>
                    <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #FFCC66;color: #000080;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TimeTextBox" runat="server" Text='<%# Bind("Time") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TimeTextBox" runat="server" Text='<%# Bind("Time") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #FFFBD6;color: #333333;">
                <td>
                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                </td>
                <td>
                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                </td>
                <td>
                    <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                <th runat="server">
                                    Date</th>
                                <th runat="server">
                                    Time</th>
                                <th runat="server">
                                    Comment</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                <td>
                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                </td>
                <td>
                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                </td>
                <td>
                    <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    </fieldset>
</td>
<td>
<fieldset>
<legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #0099FF">Send Response</legend>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" 
        SelectCommand="SELECT [Date], [Time], [EasyRecharge] FROM [EasyRechargeComment] WHERE ([UserName] = @UserName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="UserName" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource3">
        <AlternatingItemTemplate>
            <tr style="background-color: #FAFAD2;color: #284775;">
                <td>
                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                </td>
                <td>
                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                </td>
                <td>
                    <asp:Label ID="EasyRechargeLabel" runat="server" 
                        Text='<%# Eval("EasyRecharge") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #FFCC66;color: #000080;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TimeTextBox" runat="server" Text='<%# Bind("Time") %>' />
                </td>
                <td>
                    <asp:TextBox ID="EasyRechargeTextBox" runat="server" 
                        Text='<%# Bind("EasyRecharge") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TimeTextBox" runat="server" Text='<%# Bind("Time") %>' />
                </td>
                <td>
                    <asp:TextBox ID="EasyRechargeTextBox" runat="server" 
                        Text='<%# Bind("EasyRecharge") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #FFFBD6;color: #333333;">
                <td>
                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                </td>
                <td>
                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                </td>
                <td>
                    <asp:Label ID="EasyRechargeLabel" runat="server" 
                        Text='<%# Eval("EasyRecharge") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                <th runat="server">
                                    Date</th>
                                <th runat="server">
                                    Time</th>
                                <th runat="server">
                                    EasyRecharge</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                <td>
                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                </td>
                <td>
                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                </td>
                <td>
                    <asp:Label ID="EasyRechargeLabel" runat="server" 
                        Text='<%# Eval("EasyRecharge") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>

</fieldset>
</td>
</tr>
</table>
</center>
</asp:Content>

