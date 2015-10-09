<%@ Page Title="" Language="C#" MasterPageFile="~/Mbet.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="MyBetOnMbet.SearchResults" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <title>A Point In Time : Quest</title>

    <style type="text/css">
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

        
  
        	body{
		font-family: 'Times New Roman';
		font-size:12px;
      
        background-color: #f9e996;      
    
		}
        </style>
       
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <a name="resthere" />
      <div id="Heading" style="align-content:center; width:980px; margin-bottom:50px; border-bottom:5px solid black; margin:auto; margin-top:35px;">
    <img src="Images/thisisittoo.png" style="height:54px; display:inline-block; width: 108px; padding:0px 0px 0px 0px; margin-top:5px; float:left; margin-left:250px;" /> <h1 style="font-size:40px;  display:inline-block;text-align:center;  color:#2f221a; font-weight:bold; line-height:58px; margin-bottom:5px; float:left ">Search Results</h1> <img src="Images/theimage.png" style="height:54px; display:inline-block; width: 108px; padding:0px 0px 0px 0px; margin-top:5px;" />
</div>
 <div style="width:980px; margin:auto; margin-top:35px;">
     <h2>Searched For "<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>"</h2>
     
    <div id="thetable" style="margin:auto; margin-top:35px;  width:980px; ">
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
