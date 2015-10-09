<%@ Page Title="" Language="C#" MasterPageFile="~/Mbet.Master" AutoEventWireup="true" CodeBehind="BlogArchieve.aspx.cs" Inherits="MyBetOnMbet.BlogArchieve" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>A Point In Time : Moments</title>

     <style type="text/css">
         
        	body{
		font-family: 'Times New Roman';
		font-size:12px;
      
        background-color: #f9e996;
     
   
        
    
		}
      .tablestyle{
          border:3px solid black;
          text-decoration:none;
          color:white;
          background-color:#885e45;
          font-size:34px;
          text-align:center;
          
      }
           .tablestyle:hover{
                color:#2f221a;
            background-color:#f9e996;
         }
      
         
         </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
     <div id="content" style="width:980px; margin:auto;">

   
    <div id="Heading" style="align-content:center; width:980px; margin-bottom:50px; border-bottom:5px solid black; margin:auto; margin-top:35px;">
    <img src="Images/thisisittoo.png" style="height:54px; display:inline-block; width: 108px; padding:0px 0px 0px 0px; margin-top:5px; float:left; margin-left:200px;" /> <h1 style="font-size:40px;  display:inline-block;text-align:center;  color:#2f221a; font-weight:bold; line-height:58px; margin-bottom:5px; float:left ">Archieve For <asp:Label ID="Label1" runat="server" Text=""></asp:Label> </h1> <img src="Images/theimage.png" style="height:54px; display:inline-block; width: 108px; padding:0px 0px 0px 0px; margin-top:5px;" />
</div>
         <a name="resthere" />
         <div id="thetable" style="margin-top:35px; ">
             <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3">
                 <ItemTemplate>
                     <div style="margin-left:9px; margin-top:4px;">
                  <a href='<%# "readblog.aspx?id=" + Eval("BlogID") %>'>
             <table class="tablestyle" style="width: 316px; border:3px solid black; height:200px;">
                 <tr>
                     <td  style="height:34px;">
                         <asp:Label ID="Label2" runat="server" Font-Bold="true" Text='<%#Eval("Heading") %>'></asp:Label></td>
                 </tr>
                 <tr>
                     <td style="height: 106px; "><asp:Image ID="Image1" runat="server" Height="100px" width="310" ImageUrl='<%#Eval("BlogImage") %>'/></td>
                 </tr>
                 <tr>
                     
                     <td ><asp:Label ID="Label3" runat="server" Font-Size="Medium" Text='<%#Eval("BlogDate").ToString() %>'></asp:Label></td>
                 </tr>
             </table>
             </a>
                         </div>
     </ItemTemplate>
             </asp:DataList>
             </div>
         <script>setTimeout(function () { scrollToAnchor('resthere') }, 700);</script>
     </div>
</asp:Content>
