<%@ Page Title="" Language="C#" MasterPageFile="~/Mbet.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MyBetOnMbet.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Tales Of Startups</title>
    <style type="text/css">
        #about-section{  width: 980px;
    margin:auto;
    margin-top: 35px;
    overflow: hidden;
    text-align:left;
      /*background-color: #f9e996;*/
      }
      	body{
		font-family: 'Times New Roman';
		font-size:12px;
      
       
        background:url('Images/back.jpg');
       
     background-size:contain;                    
    background-repeat: no-repeat;
    background-position: center top;
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
       

    
#thisnavigation.fixed {
    position: fixed;
    top: 0px;
    left: 0;
    z-index: 1;
    width: 100%;
    margin-top:0px;
    padding-top:0px;
   margin-bottom:30px;
   padding-bottom:30px;
  
}
    

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    
    <div id="sliderFrame">
        <div id="slider">
            
            <a href="<%=ImageoneUrl %>" target="_blank"><img src="<%=ImageoneSrc %>" /></a>
            <a href="<%=ImagetwoUrl %>" target="_blank"><img src="<%=ImagetwoSrc %>" /></a>
           <a href="<%=ImagethreeUrl %>" target="_blank"><img src="<%=ImagethreeSrc %>" /></a>


         
        </div>
        <a name="about"  /> 
      
    </div>
         
    <div style="margin-bottom:120px; ">
  
        </div>
     <div id="Heading" style="align-content:center; width:980px; margin-bottom:50px; border-bottom:5px solid black; margin:auto; margin-top:35px;">
    <img src="Images/thisisittoo.png" style="height:54px; display:inline-block; width: 108px; padding:0px 0px 0px 0px; margin-top:5px; float:left; margin-left:230px;" /> <h1 style="font-size:40px;  display:inline-block;text-align:center;  color:#2f221a; font-weight:bold; line-height:58px; margin-bottom:5px; float:left ">What's The Point?</h1> <img src="Images/theimage.png" style="height:54px; display:inline-block; width: 108px; padding:0px 0px 0px 0px; margin-top:5px;" />
</div>  

    <div id="about-section">
          

        <p style=" font-size:20px; width:980px;">
            These blogs are all about capturing young and budding companies around Waterloo/Kitchener region at a point in time. The aspirations of entrepreneurs, their fears, their challenges, their accomplishments are recurring subjects of the blogs. The writers constitute of MBET v12 students who interview founders/employees of these young startups and try to present the world from their perspective. It goes without saying that the whole startup ecosystem is continuously changing and as a result of this volatility, startups are created and closed on a regular basis. So, as suggested by one of the entrepreneur, these blogs may also act as time capsules. <br />
For those readers unfamiliar with MBET, it is a Master’s degree offered by the University of Waterloo’s Conrad Center. MBET stands for Masters in Business, Entreprenuership and Technology.  

        </p>
        </div>
    <div id="RecentBlogs" style="align-content:center; width:980px; margin-bottom:50px; border-bottom:5px solid black; margin:auto; margin-top:35px;">
    <img src="Images/thisisittoo.png" style="height:54px; display:inline-block; width: 108px; padding:0px 0px 0px 0px; margin-top:5px; float:left; margin-left:280px;" /> <h1 style="font-size:40px;  display:inline-block;text-align:center;  color:#2f221a; font-weight:bold; line-height:58px; margin-bottom:5px; float:left ">Recent Posts</h1> <img src="Images/theimage.png" style="height:54px; display:inline-block; width: 108px; padding:0px 0px 0px 0px; margin-top:5px;" />
</div>  
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
                     <a name="contact"  /> 
                     <td ><asp:Label ID="Label3" runat="server" Font-Size="Medium" Text='<%#Eval("BlogDate").ToString() %>'></asp:Label></td>
                 </tr>
             </table>
             </a>
                         </div>
     </ItemTemplate>
             </asp:DataList>
             </div>
    <div id="Contact" style="align-content:center; width:980px; margin-bottom:50px; border-bottom:5px solid black; margin:auto; margin-top:35px;">
    <img src="Images/thisisittoo.png" style="height:54px; display:inline-block; width: 108px; padding:0px 0px 0px 0px; margin-top:5px; float:left; margin-left:290px;" /> <h1 style="font-size:40px;  display:inline-block;text-align:center;  color:#2f221a; font-weight:bold; line-height:58px; margin-bottom:5px; float:left ">Contact Us</h1> <img src="Images/theimage.png" style="height:54px; display:inline-block; width: 108px; padding:0px 0px 0px 0px; margin-top:5px;" />
</div>  

    <div id="contactme" style="width:980px; margin:auto;">
          

        <p style=" font-size:20px; width:980px; text-align:center; margin-top:35px;">
           Drop us an email at <b>contact@talesofstartups.com</b> and we will surely get back to you!
        </p>
        </div>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            var top = $('#thisnavigation').offset().top - parseFloat($('#thisnavigation').css('marginTop').replace(/auto/, 100));
            $(window).scroll(function (event) {
                // what the y position of the scroll is
                var y = $(this).scrollTop();

                // whether that's below the form
                if (y >= top) {
                    // if so, ad the fixed class
                    $('#thisnavigation').addClass('fixed');
                } else {
                    // otherwise remove it
                    $('#thisnavigation').removeClass('fixed');
                }
            });
        });
        </script>
    
    
  
    
    
</asp:Content>
