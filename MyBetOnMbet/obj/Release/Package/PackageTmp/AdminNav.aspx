<%@ Page Title="" Language="C#" MasterPageFile="~/Mbet.Master" AutoEventWireup="true" CodeBehind="AdminNav.aspx.cs" Inherits="MyBetOnMbet.AdminNav" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>A Point In Time : AdminNav</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div id="MainContent" style="align-content:center; width:980px; margin:35px auto 35px auto;">
        <div style="padding-left:320px; padding-bottom:35px;">
        <asp:Button ID="btnBlogList" runat="server" Height="63px" Text="All Blogs" Width="250px" align="center" BackColor="#85634F" Font-Bold="True" Font-Size="X-Large" ForeColor="White" BorderColor="Black" BorderStyle="Solid" OnClick="btnBlogList_Click"/>
            </div>
        <div style="padding-left:320px; padding-bottom:35px;">
        <asp:Button ID="btnBlogEntry" runat="server" Height="63px" Text="New Blog Entry" Width="250px" align="center" BackColor="#85634F" Font-Bold="True" Font-Size="X-Large" ForeColor="White" BorderColor="Black" BorderStyle="Solid" OnClick="btnBlogEntry_Click"/>
            </div>
        <div style="padding-left:320px; padding-bottom:35px;">
        <asp:Button ID="btnCoverPicUpload" runat="server" Height="63px" Text="New Cover Pic Upload" Width="250px" align="center" BackColor="#85634F" Font-Bold="True" Font-Size="X-Large" ForeColor="White" BorderColor="Black" BorderStyle="Solid" OnClick="btnCoverPicUpload_Click"/>
            </div>
        
        <div style="padding-left:320px; padding-bottom:35px;">
        <asp:Button ID="btnCoverPicList" runat="server" Height="63px" Text="Cover Pic List" Width="250px" align="center" BackColor="#85634F" Font-Bold="True" Font-Size="X-Large" ForeColor="White" BorderColor="Black" BorderStyle="Solid" OnClick="btnCoverPicList_Click"/>
            </div>
        <div style="padding-left:320px; padding-bottom:35px;">
        <asp:Button ID="AllComments" runat="server" Height="63px" Text="All Comments List" Width="250px" align="center" BackColor="#85634F" Font-Bold="True" Font-Size="X-Large" ForeColor="White" BorderColor="Black" BorderStyle="Solid" OnClick="AllComments_Click"/>
            </div>
          <div style="padding-left:320px; padding-bottom:35px;">
        <asp:Button ID="AllDirtyBlogs" runat="server" Height="63px" Text="Dirty Blogs" Width="250px" align="center" BackColor="#85634F" Font-Bold="True" Font-Size="X-Large" ForeColor="White" BorderColor="Black" BorderStyle="Solid" OnClick="AllDirtyBlogs_Click"/>
            </div>
    </div>
</asp:Content>
