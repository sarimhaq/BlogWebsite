<%@ Page Title="" Language="C#" MasterPageFile="~/Mbet.Master" AutoEventWireup="true" CodeBehind="readblog.aspx.cs" Inherits="MyBetOnMbet.readblog" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <title>A Point In Time : Blog</title>

    <style type="text/css">
      .Heading {font-size:36px; text-align:center;}
        .auto-style1 {
            width: 583px;
            height: 30px;
            font-size: 20px;
            background-color:#885e45;
            border-right: 2px solid white;       
            color:white; 
            
        }

        	body{
		font-family: 'Times New Roman';
		font-size:12px;
             
        background:url('Images/BackImage.png');
       
     background-size:contain;                    
    background-repeat: no-repeat;
    background-position: center top;
     background-color: #f9e996;
        background-color: #f9e996;
     
   
        
    
		}
        .auto-style2 {
            height: 30px;
            font-size: 20px;
               background-color:#885e45;
            color:white; 
            padding-left:0px;
            border-left-width:0px;
            border-left:1px solid white;
        }
        .auto-style3 {
            height: 54px;
            font-size: 16px;
            text-align:left;
            padding:0px;

        }
        #comment{
               border: 5px solid black;
           
        }

        #Button1{
            float:left; height: 62px; width: 180px;
            color:white; background-color:#885e45;
            font-size:20px; font-weight:bold; text-align:center;
            border:3px solid black;
        }
        #Button1:hover{
            background-color:white; color:#885e45;
        }

          
      
        .commentbox{
            height:50%; width:100%;
        }
        .commentname{
            width:30%; float:left; height:18%;
        }
        .postitbutton{
            float:right;
              color:white; background-color:#885e45;
            font-size:20px; font-weight:bold; text-align:center;
            border:3px solid black;
        }
          .postitbutton:hover{
            background-color:white; color:#885e45;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div style=" width:980px; margin:35px auto;">
    <a name="inbetween" />
            <div id="Heading" style="align-content:center; width:980px; margin:auto; border-bottom:5px solid black;">
     <h1 style="font-size:40px;  display:inline-block;text-align:center;  color:#2f221a; font-weight:bold; float:left; line-height:58px; ">
         <asp:Label ID="lblHead" runat="server" Text="Label"></asp:Label></h1> <img src="Images/theimage.png" style="height:54px; display:inline-block; width: 108px; padding:0px 0px 0px 0px; margin-top:5px;" />
</div>
            
<div id="pic" style="margin-top:35px;">

    <asp:Image ID="coverImage" runat="server" Height="357px" Width="980px" ImageUrl="#" />

</div>
            
<div id="content" style="margin-top:35px; width:980px; margin-bottom:35px;">
    <asp:Label ID="BlogText" runat="server" Text="Label" Font-Size="16"></asp:Label>
</div>
<div id="commentbutton" style="width:980px;">
    <img src="Images/thisisittoo.png" style="height:54px; display:inline-block; width: 108px; padding:0px 0px 0px 0px; margin-top:5px; float:left; margin-left:275px;" /><input id="Button1" type="button" value="Comments?" />  <img src="Images/theimage.png" style="height:54px; display:inline-block; width: 108px; padding:0px 0px 0px 0px; margin-top:5px;" />
</div>

            
</div>
    
 <div id="nocommentdetail" style="text-align:center; width:980px; margin:auto;">
<asp:Label ID="CommentEn" runat="server" Text="Take the Lead and Be the First to Comment!" Font-Size="25" Font-Bold="true"></asp:Label>
     </div>
    
<a name="resthere" />
<div id="comment-box" hidden="hidden" style="height:0; width:980px; margin-top:35px; margin-left: auto; margin-right: auto; margin-bottom: auto; ">

    <div style="display:inline; height:18%;width:980px;"><h2 style="float:left; font-size:24px; height:18%; margin-top:10px; margin-right:3px; ">Name</h2><asp:TextBox ID="commentname" CssClass="commentname" runat="server" Font-Size="Large" ForeColor="#663300" ></asp:TextBox></div>
    <asp:TextBox ID="commenttext" runat="server" CssClass="commentbox" TextMode="MultiLine" ForeColor="#663300" Font-Size="Large"></asp:TextBox>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate><asp:Button ID="postitbutton" runat="server" Text="Post It!" Height="43px"  CssClass="postitbutton" OnClick="postitbutton_Click" Width="151px" /></ContentTemplate></asp:UpdatePanel>
</div>

 <div id ="CommentSection" style="margin:auto; margin-top:35px; width:980px;">
     <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional"><ContentTemplate>

     <asp:DataList ID="DataList1" runat="server">
         <HeaderTemplate>
             <h1>Comments</h1>
         </HeaderTemplate>
         <ItemTemplate>
          <table style="width:980px; margin-top:5px; border:5px solid black; font:large;">
         <tr>
             <td class="auto-style1">
                 <asp:Label ID="Label1" runat="server" Text='<%#Eval("commentname") %>' ></asp:Label></td>
             <td class="auto-style2"><asp:Label ID="Label2" runat="server" Text='<%#Eval("commentdate") %>'></asp:Label></td>
         </tr>
         <tr>
             <td colspan="2" class="auto-style3"><asp:Label ID="Label3" runat="server" Text='<%#Eval("CommentText") %>'></asp:Label></td>
         </tr>

     </table>
             </ItemTemplate>
     </asp:DataList>
         </ContentTemplate></asp:UpdatePanel>
     </div>
    <a name="newcomment" />

    <asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel2" runat="server">
        <ProgressTemplate>
            <img src="Images/loading.gif" width="40" height="48"/>
        </ProgressTemplate>
    </asp:UpdateProgress>
 
    
     <script>


         setTimeout(function () { scrollToAnchor('inbetween') }, 700);

         var commentbox = document.getElementById("comment-box");
         var commentbutton = document.getElementById("Button1");
         var postitbox = document.getElementById("Body_postitbutton");
         commentbutton.addEventListener("click", function () { scrollToAnchor('resthere'); var i = 0; commentbox.hidden = false; var mvar = setInterval(function () { i = i + 10; commentbox.style.height = i + "px"; if (i > 243) { clearTimeout(mvar); } }, 0.2); });
         postitbox.addEventListener("click", function () { commentbox.hidden = true;  setTimeout(scrollToAnchor('newcomment'), 500); });
     </script>

        
    

        
    </a>

        
    

        
    </asp:Content>

 
       
    

 
        

 
       
    

 
           

 
       
    

 
        

 
       
    

 

        

        
    

 
       
    

 
        

 
       
    

 
           

 
       
    

 
        

 
       
    

 
        

        
    

 
       
    

 
        

 
       
    

 
           

 
       
    

 
        

 
       
    

 

        

        
    

 
       
    

 
        

 
       
    

 
           

 
       
    

 
        

 
       
    

 
   

        
    

 
       
    

 
        

 
       
    

 
           

 
       
    

 
        

 
       
    

 

        

        
    

 
       
    

 
        

 
       
    

 
           

 
       
    

 
        

 
       
    

 
        

        
    

 
       
    

 
        

 
       
    

 
           

 
       
    

 
        

 
       
    

 

        

        
    

 
       
    

 
        

 
       
    

 
           

 
       
    

 
        

 
       
    



        
    

 
       
    

 
        

 
       
    

 
           

 
       
    

 
        

 
       
    

 

        

        
    

 
       
    

 
        

 
       
    

 
           

 
       
    

 
        

 
       
    

 
        

        
    

 
       
    

 
        

 
       
    

 
           

 
       
    

 
        

 
       
    

 

        

        
    

 
       
    

 
        

 
       
    

 
           

 
       
    

 
        

 
       
    

 
   

        
    

 
       
    

 
        

 
       
    

 
           

 
       
    

 
        

 
       
    

 

        

        
    

 
       
    

 
        

 
       
    

 
           

 
       
    

 
        

 
       
    

 
        

        
    

 
       
    

 
        

 
       
    

 
           

 
       
    

 
        

 
       
    

 

        

        
    

 
       
    

 
        

 
       
    

 
           

 
       
    

 
        

 
       
    

 


