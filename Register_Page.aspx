<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Register_Page.aspx.cs" Inherits="Register_Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <html> <body> <table>
    <tr style="font-weight: 700">
    
    <td>
        <asp:Label ID="lblwelcome" runat="server" Text="Welcome:" 
            style="font-weight: 700; font-style: italic; color: #0099FF" 
            Visible="False"></asp:Label></td>
        <td style="width: 55px">
            <asp:Label ID="lbluser" runat="server" Text="User" 
                style="font-weight: 700; font-style: italic; color: #0000CC" 
                Visible="False"></asp:Label>

                 </td><td>
                     <asp:Label ID="wallamount" runat="server" Text="MyWallet:" 
                         style="font-style: italic; color: #0099FF" Visible="False"></asp:Label>   
                     <asp:Label ID="lblwallet" runat="server" 
                         style="color: #0000CC; background-color: #FFFFFF" Visible="False"></asp:Label>
                    &nbsp;</td>
                    <td>
                        <asp:Label ID="rs" runat="server" Text="Rs" 
                            style="font-style: italic; color: #0000CC" Visible="False"></asp:Label>
                    </td>
                    <td>
                <asp:Button ID="btnlogout" runat="server" Text="Logout" Height="26px" 
                    style="font-weight: 700; font-style: italic; color: #0099FF;" Width="57px" 
                    Visible="False" onclick="btnlogout_Click" CausesValidation="False" /></td>
    </tr>
    </table>
    </body>
    </html>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
    <html>
   <body>
   <br />
   <center>
   <table>
   <tr>
   <td style="width: 459px">
       <asp:Panel ID="Panelregi" runat="server">
      
   <fieldset >
   <legend style="font-weight: 700; font-style: italic; font-size: x-large; color: #FFFFFF; background-color: #0099FF; text-align: right;">Registartion</legend>
   <table style="width: 630px; height: 396px;">
   <tr>
   <td style="font-style: italic; color: #0099FF; font-weight: bold; width: 182px; height: 35px;"><i>
       <b>Email:</b></i></td><td style="width: 172px; height: 35px;">
       <asp:TextBox ID="txtemail" runat="server" 
               style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox></td>
       <td style="width: 386px; text-align: left; height: 35px;">
           <asp:RequiredFieldValidator ID="rfvemail" runat="server" 
               ControlToValidate="txtemail" ErrorMessage="Enter the Email" 
               
               
               style="font-weight: bold; font-style: italic; color: #FF0000; text-align: left;" 
               Display="Dynamic"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
               ControlToValidate="txtemail" Display="Dynamic" 
               ErrorMessage="Plz Enter The Valid Email" 
               style="font-style: italic; font-weight: 700; color: #FF0000" 
               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
       </td>
   </tr>
   <tr>
   <td style="font-style: italic; color: #0099FF; font-weight: bold; width: 182px; height: 40px;"><i>
       <b>User Name:</b></i></td><td style="width: 172px; height: 40px;">
       <asp:TextBox ID="txtusername" runat="server" 
               style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox></td>
       <td style="width: 386px; text-align: left; height: 40px;">
           <asp:Label ID="lblchekuser" runat="server" Visible="False" 
               style="font-weight: 700; font-style: italic; color: #FF0000"></asp:Label>
           <asp:RequiredFieldValidator ID="rfvuser" runat="server" 
               ControlToValidate="txtusername" ErrorMessage="Enter The User Name" 
               style="font-weight: bold; font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
       </td>
   </tr>
   <tr>
   <td style="font-style: italic; color: #0099FF; font-weight: bold; width: 182px; height: 44px;"><i>
       <b>Password:</b></i></td><td style="width: 172px; height: 44px;">
       <asp:TextBox ID="txtpassword" runat="server" 
               style="font-weight: bold; font-style: italic; color: #0099FF" 
               TextMode="Password"></asp:TextBox></td>
       </center>
       <td style="width: 386px; text-align: left; height: 44px;">
           <asp:RequiredFieldValidator ID="rfvpass" runat="server" 
               ControlToValidate="txtpassword" ErrorMessage="Enter The Password" 
               style="font-weight: bold; font-style: italic; color: #FF0000" 
               Display="Dynamic"></asp:RequiredFieldValidator>
           <asp:PasswordStrength
                   ID="PasswordStrength1" runat="server" TargetControlID="txtpassword">
               </asp:PasswordStrength>
               <asp:RegularExpressionValidator ID="RegExp1" runat="server"    
ErrorMessage="Password length must be between 7 to 10 characters"
ControlToValidate="txtpassword"    
ValidationExpression="^[a-zA-Z0-9\s]{7,10}$" Display="Dynamic" 
               style="font-weight: 700; font-style: italic; color: #FF0000" />
       </td>
   </tr>
       <center>
           <tr>
               <td style="font-style: italic; color: #0099FF; font-weight: bold; width: 182px">
                   <i><b>Confirm Password:</b></i></td>
               <td style="width: 172px">
                   <asp:TextBox ID="txtcpass" runat="server" 
                       style="font-weight: bold; font-style: italic; color: #0099FF" 
                       TextMode="Password"></asp:TextBox>
               </td>
               <td style="width: 386px; text-align: left;">
                   <asp:RequiredFieldValidator ID="rfvcpass" runat="server" 
                       ControlToValidate="txtcpass" ErrorMessage="Enter The Confirm Password" 
                       style="font-weight: bold; font-style: italic; color: #FF0000" 
                       Display="Dynamic"></asp:RequiredFieldValidator>
                   <asp:PasswordStrength ID="PasswordStrength2" runat="server" 
                       TargetControlID="txtcpass">
                   </asp:PasswordStrength>
                   <asp:CompareValidator ID="CompareValidator2" runat="server" 
                       ControlToCompare="txtpassword" ControlToValidate="txtcpass" Display="Dynamic" 
                       ErrorMessage="Passwor &amp; Confirm Password Must Be Match" 
                       style="font-weight: 700; font-style: italic; color: #FF0000"></asp:CompareValidator>
               </td>
           </tr>
           <center>
               <tr>
                   <td style="font-style: italic; color: #0099FF; font-weight: bold; width: 182px">
                       <i><b>Mobile No:</b></i></td>
                   <td style="width: 172px">
                       <asp:TextBox ID="txtmobileno" runat="server" 
                           style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
                   </td>
                   <td style="width: 386px; text-align: left;">
                       <asp:RequiredFieldValidator ID="rfvmobino" runat="server" 
                           ControlToValidate="txtmobileno" ErrorMessage="Enter The Mobile Number" 
                           style="font-weight: bold; font-style: italic; color: #FF0000" 
                           Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:CompareValidator
                ID="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer"
            ErrorMessage="Value must be a whole number" ControlToValidate="txtmobileno" 
            Display="Dynamic" 
        style="font-weight: 700; font-style: italic; color: #FF0000"  ></asp:CompareValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        Display="Dynamic" ValidationExpression="[0-9]{10}" 
        ErrorMessage="Enter Valid Mobile Number" ControlToValidate="txtmobileno" 
        style="font-weight: 700; font-style: italic; color: #FF0000"></asp:RegularExpressionValidator>
                   </td>
               </tr>
               <center>
                   <tr>
                       <td style="font-style: italic; color: #0099FF; font-weight: bold; height: 26px; width: 182px">
                           <i><b>Age:</b></i></td>
                       <td style="height: 26px; width: 172px">
                           <asp:TextBox ID="txtage" runat="server" 
                               style="font-weight: bold; font-style: italic; color: #0099FF"></asp:TextBox>
                       </td>
                       <td style="height: 26px; width: 386px; text-align: left;">
                           <asp:RequiredFieldValidator ID="rfvage" runat="server" 
                               ControlToValidate="txtage" ErrorMessage="Enter The Age" 
                               style="font-weight: bold; font-style: italic; color: #FF0000" 
                               Display="Dynamic"></asp:RequiredFieldValidator>
                           <asp:RangeValidator ID="RangeValidator1" runat="server" 
                               ControlToValidate="txtage" Display="Dynamic" 
                               ErrorMessage="age Must In Between 13-90" MaximumValue="90" MinimumValue="13" 
                               style="font-weight: 700; font-style: italic; color: #FF0000" 
                               Type="Integer"></asp:RangeValidator>
                       </td>
                   </tr>
                   <center>
                       <tr>
                           <td style="font-style: italic; color: #0099FF; font-weight: bold; width: 182px; height: 26px;">
                               <i><b>Country:</b></i></td>
                           <td style="width: 172px; height: 26px;">
                               <asp:DropDownList ID="ddlcountry" runat="server" 
                                   style="font-weight: bold; font-style: italic; color: #0099FF">
                                   <asp:ListItem Value="0">---select---</asp:ListItem>
                                   <asp:ListItem Value="1">india</asp:ListItem>
                                   <asp:ListItem Value="2">usa</asp:ListItem>
                               </asp:DropDownList>
                           </td>
                           <td style="width: 386px; height: 26px; text-align: left;">
                               <asp:RequiredFieldValidator ID="rfvcountry" runat="server" 
                                   ControlToValidate="ddlcountry" ErrorMessage="Select The Country" 
                                   style="font-weight: bold; font-style: italic; color: #FF0000" 
                                   InitialValue="0"></asp:RequiredFieldValidator>
                           </td>
                       </tr>
                       <center>
                           <tr>
                               <td style="height: 26px; font-style: italic; color: #0099FF; font-weight: bold; width: 182px">
                                   <i><b>Gender:</b></i></td>
                               <td style="height: 26px; width: 172px">
                                   <asp:DropDownList ID="ddlgender" runat="server" 
                                       style="font-weight: bold; font-style: italic; color: #0099FF">
                                       <asp:ListItem Value="0">---Select---</asp:ListItem>
                                       <asp:ListItem>Male</asp:ListItem>
                                       <asp:ListItem>Female</asp:ListItem>
                                   </asp:DropDownList>
                               </td>
                               <td style="height: 26px; width: 386px; text-align: left;">
                                   <asp:RequiredFieldValidator ID="rfvgender" runat="server" 
                                       ControlToValidate="ddlgender" ErrorMessage="Select The Gender" 
                                       style="font-weight: bold; font-style: italic; color: #FF0000" 
                                       InitialValue="0"></asp:RequiredFieldValidator>
                               </td>
                           </tr>
                           <center>
                               <tr>
                                   <td style="font-style: italic; color: #0099FF; font-weight: bold; width: 182px">
                                       <i><b>I agree to terms and conditions:</b></i></td>
                                   <td style="width: 172px">
                                       <asp:CheckBox ID="chkagree" runat="server" AutoPostBack="True" 
                                           style="font-weight: bold; font-style: italic; color: #0099FF" Text="Agree" />
                                   </td>
                                   <td style="width: 386px">
                                       <asp:HyperLink ID="hlagreement" runat="server" NavigateUrl="~/Agreement.aspx" 
                                           style="font-weight: 700; font-style: italic; color: #0066CC">Read Agreement</asp:HyperLink>
                                   </td>
                               </tr>
                               <tr>
                                   <td style="width: 182px; height: 30px;">
                                   </td>
                                   <td style="width: 172px; height: 30px;">
                                       <asp:Button ID="btnsub" runat="server" onclick="Button1_Click" 
                                           style="font-weight: bold; font-style: italic; color: #0099FF" Text="Submit" />
                                   </td>
                                   <td style="width: 386px; height: 30px;">
                                   </td>
                               </tr>
                               <tr>
                               <td colspan="3">
                                   &nbsp;</td>
                               </tr>
                           </center>
                       </center>
                   </center>
               </center>
           </center>
       </center>
   </table>
   
   
   </fieldset>
           <br />
           <asp:Label ID="lblid" runat="server" Visible="False"></asp:Label>
           <br />
           <asp:Label ID="lblsub" runat="server" Text="Welcome to Easy recharge .com" 
               Visible="False"></asp:Label>
           <asp:Label ID="lblfrom" runat="server" Text="erecharge7@gmail.com" 
               Visible="False"></asp:Label>
           <asp:Label ID="lblmessage" runat="server" 
               Text="welcome to ur website we are provide u " Visible="False"></asp:Label>
           <asp:Label ID="lblpass" runat="server" Text="recharge123" Visible="False"></asp:Label>
    </asp:Panel>
   </td>
   <td style="width: 316px">
   <table style="width: 464px">
   <tr>
   <td style="width: 436px; text-align: right;">
       <asp:ImageButton ID="ImageButton1" runat="server" 
           ImageUrl="~/recharge images/add1.jpg" height="200px" Width="250px" 
           onclick="ImageButton1_Click" CausesValidation="False"/></td>
   </tr>
   <tr>
   <td style="width: 436px; text-align: right;">
       <asp:ImageButton ID="ImageButton2" runat="server" Height="236px" 
           ImageUrl="~/recharge images/add2.gif" onclick="ImageButton2_Click" 
           Width="326px" style="margin-right: 6px" CausesValidation="False" /> </td>
   </tr>
       
   </table>
       <asp:ScriptManager ID="ScriptManager1" runat="server">
       </asp:ScriptManager>
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
           <asp:Timer ID="Timer1" runat="server" Interval="1000">
           </asp:Timer>
   <asp:Label ID="lbltime" runat="server" Text="Label" Visible="False"></asp:Label>&nbsp;&nbsp;<asp:Label ID="lbldate"
           runat="server" Text="Label" Visible="False"></asp:Label>
           </ContentTemplate>
            </asp:UpdatePanel>
   </td>
   </tr>
    </table>
    </center>
    </center>
    </center>
    </center>
    </center>
    </center>
    </body>
  </html> 
</tr>
</table>
</asp:Content>

