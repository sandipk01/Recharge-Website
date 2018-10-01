<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.master" AutoEventWireup="true" CodeFile="Contact_Us.aspx.cs" Inherits="Contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <html>
<body>
<table>
<tr>
<td>
    <asp:Label ID="lblwelcome" runat="server" Text="Welcome:" Visible="False" 
        style="font-weight: bold; font-style: italic; color: #0099FF"></asp:Label></td><td>
        <asp:Label ID="lbluser" runat="server" Visible="False" 
            style="font-weight: bold; font-style: italic; color: #0000CC"></asp:Label></td>
        <td>
            <asp:Label ID="wallamount" runat="server" Text="MyWallet:" 
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
                onclick="btnlogout_Click" Visible="False" 
                style="font-weight: bold; font-style: italic; color: #0099FF;" 
                CausesValidation="False" /></td>
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
<table style="height: 543px; width: 952px; ">
<tr>
<td style="height: 452px; width: 415px;">
<strong><em><span style="color: #0000FF">Office Address: EasyMobile Recharge</span><br 
        style="color: #0000FF" />
    <span style="color: #0000FF">Sector-5 Kalamboli</span><br 
        style="color: #0000FF" />
    <span style="color: #0000FF">Pin 410218<br />
    Contact No-8898856624</span><br style="color: #0099FF" />
    <span style="color: #0099FF">Email: <a href="mailto:info@easymobilerecharge.com">info@easymobilerecharge.com</a></span></em></strong><a 
        href="mailto:info@easymobilerecharge.com"></span></em></strong></a><br />
        <br>
&nbsp;<fieldset style="height: 370px; width: 324px">
<legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #0099FF">Customer Support</legend>
        <em>
    <strong><span style="color: #0099FF; font-size: large;">Type of Problem :</span><br 
        style="color: #0099FF" />
  <asp:DropDownList 
           ID="DropDownList1" runat="server" CssClass="style4" 
        AutoPostBack="True" 
        style="font-weight: 700; font-style: italic; color: #0099FF" >
       <asp:ListItem Value="1">----Please Select----</asp:ListItem>
       <asp:ListItem Value="2">Recharge/Payment Related Issue</asp:ListItem>
       <asp:ListItem Value="3">Recharge Not Done</asp:ListItem>
       <asp:ListItem Value="4">Recharge Not Receving or Pending</asp:ListItem>
       <asp:ListItem Value="5">Amount Not Added to EasyWallet</asp:ListItem>
       <asp:ListItem Value="6">I Got Diffrent Benifits What is Mension</asp:ListItem>
       <asp:ListItem Value="7">What is EasyWallet How Can i Use?</asp:ListItem>
       <asp:ListItem Value="8">Adding Amount to EasyWallet to Bank Account</asp:ListItem>
       <asp:ListItem Value="9">Other Issues</asp:ListItem>
        </asp:DropDownList>
<br style="color: #0099FF" />
    <span style="font-size: large; color: #0099FF"><center>
        <asp:Label ID="lbl" runat="server" Text="Answer"></asp:Label></center><br />

    </span>
 
    </strong>
    <span style="font-size: large; color: #0099FF">
    <center>   <asp:Label ID="lblans" runat="server" Text="Label" Visible="False" 
            style="color: #FF0000"></asp:Label>
    <strong>
        <asp:Image ID="custcare" runat="server" Height="88px" 
        ImageUrl="~/animation/customer care.gif" Width="102px" />
     
        <br>
           <asp:Button ID="btnunsolved" runat="server" Text="Still Unsolved" 
            style="font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #FF0000" 
            Visible="False" Height="33px" Width="104px" onclick="btnunsolved_Click" 
            CausesValidation="False" />
        <br>
   
        <span 
        style="color: #0099FF"><em> 
        <asp:LinkButton ID="lblresponse" runat="server" onclick="LinkButton1_Click" 
            CausesValidation="False">Check last Comment Response</asp:LinkButton>
        </em>
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click1" 
            CausesValidation="False">Send Comment or FAQ</asp:LinkButton>
        </span>

    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="1000">
                </asp:Timer>
                <asp:Label ID="lbltime" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbldate" 
                    runat="server" Text="Label" Visible="False"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
        </center> 

    </strong> 

    </span>
 
    </em>
 


</fieldset>

</td>
<td style="width: 651px; height: 452px;">
     </em>
    </strong></span>
     <span 
        style="color: #0099FF"><strong><em> &nbsp;<br />
    <br />
<br />
<br />
<center>  

    <asp:Panel ID="Panelquery" runat="server" Visible="False" Height="578px" 
        Width="558px">
   
<fieldset style="height: 548px; width: 438px">
       <legend style="font-weight: 700; font-style: italic; font-size: xx-large; color: #FFFFFF; background-color: #0099FF">Query form</legend>
       <table style="width: 526px">
       <tr>
       <td class="style14" style="height: 45px; width: 129px">
           Name:
       </td>
       <td style="height: 45px; width: 213px;"> 
           <asp:Label ID="lblusername" runat="server"></asp:Label>
           </td>
           <td style="height: 45px; width: 137px"></td>
       </tr>
       <tr>
       <td class="style14" style="height: 40px; width: 129px">
       Mobile No:
       </td>
       <td style="height: 40px; width: 213px;">
           <asp:Label ID="lblmobino" runat="server"></asp:Label>
           </td>
           <td style="height: 40px; width: 137px"></td>
       </tr>
       <tr>
       <td class="style14" style="height: 46px; width: 129px">Email:</td>
           <td style="height: 46px; width: 213px;">
               <asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label>
           </td>
           <td style="height: 46px; width: 137px"></td>
       </tr>
       <tr>
       <td class="style11" style="width: 129px">Comment:</td><td class="style10" 
               style="width: 213px"> 
           <asp:TextBox ID="txtcomment" 
               runat="server" TextMode="MultiLine" CssClass="style14" Height="71px" 
               style="margin-top: 0px; margin-bottom: 0px" Width="213px"></asp:TextBox></td>
           <td class="style10" style="width: 137px">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                   ControlToValidate="txtcomment" ErrorMessage="Plz Enter The Comment" 
                   style="color: #FF0000"></asp:RequiredFieldValidator>
           </td>
       </tr>
       <tr><td style="width: 129px"></td><td style="width: 213px"> 
           <asp:Button ID="btnsubmitq" runat="server" Height="30px" 
               style="font-weight: 700; font-style: italic; color: #FFFFFF; background-color: #0099FF" 
               Text="Submit Query" Width="98px" onclick="btnsubmitq_Click"  />
           </td></tr>
           <tr>
           <td colspan="3">
           <center>
               </center>
           </td>
           </tr>
       
          
       
       </table>
    
       </center>
        
    
    </td>
    </tr>
    </table></fieldset>
       
     </asp:Panel>
    </center>


</td>
</tr>
</table>

<asp:Panel ID="Panel1" runat="server" Visible="False">
    <table>
    <tr>
    <td style="width: 492px"><fieldset>
   <legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #0099FF">Your Comments</legend>
       <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
   </fieldset> </td>

   <td style="width: 382px"><fieldset>
<legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #0099FF">EasyRecharge.com</legend>
    <br />
    <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
</fieldset></td>
    </tr>
    
    </table>
    </asp:Panel>
</center>
</body>
</html>

</asp:Content>

