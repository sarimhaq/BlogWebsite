<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="MyBetOnMbet.Adminz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style type="text/css">
    .auto-style1
        {
            height: 16px;
        }
        .auto-style2
        {
            height: 16px;
            width: 405px;
        }
        #loginArea
        {
            margin: auto;
            width: 960px;
        }
        .auto-style3
        {
            width: 405px;
        }
        .btns
        {
            display: inline-block;
            
        }
        </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="loginArea" style="margin-top:40px; margin-bottom:100px; border:solid 2px;">
     <table  style=" width: 960px; visibility: visible;" >
        <tr>
            <td colspan="2"><h1 style="background-color: #00FFFF; text-align: center;">Login</h1></td>
        </tr>
        <tr>
            <td class="auto-style2" style="padding: 5px 0px 5px 0px; font-size: large; color: #000000; font-weight: bold; text-align:right;">EmailID &nbsp;</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtEmail" runat="server" Height="26px" Width="212px" TextMode="Email" ></asp:TextBox><br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="padding: 5px 0px 5px 0px; text-align:right; font-size: large; color: #000000; font-weight: bold;" >Password &nbsp;</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtPassword" runat="server" Height="26px" Width="212px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
         <tr>
             <td class="auto-style3">

             </td>
             <td>

             </td>
         </tr>
         <tr>
             <td>
             &nbsp;</td>
         </tr>
     
    </table>
       
       <br />
           <div class="btns" style="margin-bottom:40px;">
               
               <asp:Button ID="Button1" runat="server" Text="Login" style="font-weight:bold; margin-left:410px; height: 33px; width: 70px; display:inline;" class="btns" OnClick="Button1_Click" />
&nbsp;</div>
       <div class="btns" style="padding-left:20px;">
           &nbsp;
           </div>
       <br />

       <asp:Label ID="lblErrorMsg" runat="server" Text="Label" Font-Bold="True" Font-Size="Large" style="margin-left:320px; padding-bottom:20px;"></asp:Label>
           <br />   
          </div>
    
    <br />
    </div>
    </form>
</body>
</html>
