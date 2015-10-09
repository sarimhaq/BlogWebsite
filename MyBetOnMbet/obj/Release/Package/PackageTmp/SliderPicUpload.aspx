<%@ Page Title="" Language="C#" MasterPageFile="~/Mbet.Master" AutoEventWireup="true" CodeBehind="SliderPicUpload.aspx.cs" Inherits="MyBetOnMbet.SliderPicUpload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>A Point In Time : Slider Pic Upload</title>
    <style type="text/css">
        .auto-style1 {
            font-weight: 700;
            height: 46px;
        }
        .auto-style2 {
            width: 263px;
            height: 47px;
        }
        .auto-style3 {
            height: 47px;
        }
        #Text1 {
            width: 214px;
            height: 32px;
        }
        .auto-style4 {
            width: 263px;
            height: 278px;
        }
        .auto-style5 {
            height: 278px;
        }
        #BlogEntry {
            height: 259px;
            width: 701px;
        }
        #Heading {
            width: 698px;
            height: 25px;
        }
        .auto-style6 {
            height: 46px;
        }
        #Month {
            height: 27px;
            width: 269px;
        }
    .auto-style7 {
        font-weight: 700;
        height: 36px;

    }
    .auto-style8 {
        height: 36px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <table style="width:980px; margin:35px auto; font-size:large;">
        <tr>
            <td class="auto-style2" ><h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Blog URL</strong></h2></td>
            <td class="auto-style3">
                <asp:TextBox ID="txtHeading" runat="server" Height="31px" Width="699px"></asp:TextBox>
            </td>
            
        </tr>
      
         <tr>
            <td class="auto-style1" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnUpload" runat="server" Height="33px" Text="Upload" Width="94px" OnClick="btnUpload_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Height="28px" Width="235px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">

                <asp:Image ID="Image1" runat="server" Height="357px" Width="980px" />

            </td>
        </tr>
         <tr>
            <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Height="49px" Text="Upload!" Width="102px" OnClick="Button1_Click1" Font-Bold="True" Font-Size="X-Large" />
             </td>
            <td class="auto-style8" >
                <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
                </td>
            </tr>
    </table>
</asp:Content>
