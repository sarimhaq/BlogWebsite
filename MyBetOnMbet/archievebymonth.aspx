<%@ Page Title="" Language="C#" MasterPageFile="~/Mbet.Master" AutoEventWireup="true" CodeBehind="archievebymonth.aspx.cs" Inherits="MyBetOnMbet.archievebymonth" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <title>A Point In Time : Months</title>
    
     <style type="text/css">

   
        	body{
		font-family: 'Times New Roman';
		font-size:12px;
      
        background-color: #f9e996;
     
   
        
    
		}
        .auto-style1 {
            height: 200px;
            text-decoration: none;
        }
         .thetable {
             width:315px; margin-top:5px; color:white; background-color:#885e45;
             border:3px solid black;
             margin-left:5px;
        }
         .thetable:hover{
                color:#2f221a;
            background-color:#f9e996;
         }
         #thisnavigation.fixed {
    position: fixed;
    top: -35px;
    left: 0;
    z-index: 1;
    width: 100%;
    margin-top:0px;
    padding-top:0px;
    
}

    .searchbutton{
          text-decoration:none;
          color:white;
          background-color:#885e45;
          font-size:28px;
          text-align:center;
          font-weight:bold;
          margin-bottom:5px;
          margin-left:5px;
    }
       .searchbutton:hover{
                color:#2f221a;
            background-color:#f9e996;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    
     <div style=" width:980px; margin:auto;">

   
    <div id="Heading" style="align-content:center; width:980px; margin-bottom:50px; border-bottom:5px solid black; margin:auto; margin-top:35px;">
    <img src="Images/thisisittoo.png" style="height:54px; display:inline-block; width: 108px; padding:0px 0px 0px 0px; margin-top:5px; float:left; margin-left:200px;" /> <h1 style="font-size:40px;  display:inline-block;text-align:center;  color:#2f221a; font-weight:bold; line-height:58px; margin-bottom:5px; float:left ">Month Wise Archieve</h1> <img src="Images/theimage.png" style="height:54px; display:inline-block; width: 108px; padding:0px 0px 0px 0px; margin-top:5px;" />
</div>
         
         <div id="search" style="width:980px; margin:auto; margin-top:35px; text-align:center;">
             <a name="resthere" />
             <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Double" Height="50px" Width="266px" Font-Size="28px"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Search" Height="45px" Width="110px" CssClass="searchbutton" OnClick="Button1_Click" />
         </div>
         <div id="monthlytable" style="margin-top:30px; margin-left:10px;">
             
             <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3">
                 
                 <ItemTemplate>
                     <a href='<%# "BlogArchieve.aspx?id=" + Eval("BlogMonth") %>' style="text-decoration: none;">
             <table class="thetable">
                 <tr>
                     <td class="auto-style1" style="text-align:center; font-weight:bold; "><h1>
                         <asp:Label ID="Label1" runat="server" Text='<%#Eval("BlogMonth") %>' Font-Size="30" Font-Bold="True"></asp:Label></h1></td>
                     
                 </tr>
                 
             </table>
             </a>
                 </ItemTemplate>
             </asp:DataList>
         </div>
         <script>setTimeout(function () { scrollToAnchor('resthere') }, 700);</script>
         </div>
    
    

     
    
    

</asp:Content>
