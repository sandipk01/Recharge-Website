<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home_Page.aspx.cs" Inherits="Home_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <html>
 <body>
 <table>
 <tr>
 <td>
     <asp:Label ID="lblwelcome" runat="server" Text="Welcome:" 
         style="font-weight: 700; font-style: italic; color: #0099FF" 
         Visible="False"></asp:Label></td>
     <td style="width: 26px">
         <asp:Label ID="lbluser" runat="server" Text="User" 
             style="color: #0000FF; font-weight: 700; font-style: italic" 
             Visible="False"></asp:Label></td><td>
             
                 <asp:Label ID="wallamount" runat="server" Text="Wallet:" 
                     style="font-style: italic; font-weight: 700; color: #0099FF" Visible="False"></asp:Label>
             </td>
             <td>
                 <asp:Label ID="lblwallet" runat="server" Visible="False" 
                     style="color: #0000FF; font-weight: 700; font-style: italic"></asp:Label>
             </td>
             <td>
                 <asp:Label ID="rs" runat="server" Text="RS" 
                     style="font-weight: 700; font-style: italic; color: #0000FF" Visible="False"></asp:Label></td>
             <td>
             <asp:Button ID="btnlogout" runat="server" Text="Logout" 
                 onclick="btnlogout_Click" Visible="False" CausesValidation="False" 
                     style="color: #0099FF" /></td>
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



<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
                    <asp:Image ID="Image1" Height="276px" Width="1014px" runat="server" />

                        </ContentTemplate>
                    </asp:UpdatePanel>
    
   


<br />
</center>
<center>
<table>
<tr>
<td style="width: 454px">
<fieldset style="margin-top: 0px; width: 346px;">
<legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">Recharge Your Mobile Online</legend>
<marquee direction="up" scrollamount="2"  onmouseover="this.stop();" 
        onmouseout="this.start();" style="height: 137px; width: 329px;"><center style="width: 330px; font-weight: 700; font-style: italic; color: #0099FF">
        Easy Mobile Recharge - On this site you can recharge your prepaid mobile online. Prepaid Recharge for all major India's top cellular services is available here. Apart from GSM phone recharge, Online recharge is also available for CDMA prepaid cellphones. The payments can be made through all major credit cards or bank transfers.

The telecom industry is growing very fast in India. Airtel, Hutch, Idea, Tata Indicom, Reliance and BSNL are the major players in this sector. For Cell recharge,more often than not, users have to physically go to shops to recharge phone cards. Our prepaid online recharge is a one stop solution for providing easy and fast recharge of prepaid mobile phones through the internet and that too at competitive prices. 

Apart from online prepaid recharge, we would be providing information about latest mobile operator tariff, special offers, cell phones and gadgets in the market.

</center></marquee> 
</fieldset></td>

<td style="width: 329px">
    <asp:Panel ID="Panellogin" runat="server" Width="406px">
   
<fieldset style="width: 326px">
<legend style="font-size: x-large; font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF">Login</legend>
<table style="width: 373px; height: 79px">
<tr>
<td style="font-style: italic; color: #0099FF; height: 42px;"><i><b>Username:</b></i></td>
    <td style="height: 42px">
    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
    <td style="height: 42px; width: 150px">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtusername" ErrorMessage="Plz enter the user name" 
            style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td style="font-style: italic; color: #0099FF"><i><b>Password:</b></i></td><td>
    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></td>
    <td style="width: 150px">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtpassword" ErrorMessage="plz enter the Password" 
            style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
    </td></tr>
    <tr>
    <td>
    </td><td>
        <asp:Button ID="Button1" runat="server" Text="Login" 
                style="font-weight: 700; font-style: italic; color: #0099FF" 
                onclick="Button1_Click" /></td>
        <td style="width: 150px"></td>
    </tr>
   
   
  
</table>
</fieldset>
        
       <asp:UpdatePanel ID="UpdatePanel2" runat="server">
       <ContentTemplate>
           <asp:Timer ID="Timer2" runat="server" Interval="1000">
           </asp:Timer>
   <asp:Label ID="lbltime" runat="server" Text="Label" Visible="False"></asp:Label>&nbsp;&nbsp;<asp:Label ID="lbldate"
           runat="server" Text="Label" Visible="False"></asp:Label>
           </ContentTemplate>
            </asp:UpdatePanel>
 </asp:Panel>
</td>
</tr>

</table>
</center>
</body>
</html>
</asp:Content>

