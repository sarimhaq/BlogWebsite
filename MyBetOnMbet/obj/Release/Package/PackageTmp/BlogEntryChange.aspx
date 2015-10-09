<%@ Page Title="" Language="C#" MasterPageFile="~/Mbet.Master" AutoEventWireup="true" CodeBehind="BlogEntryChange.aspx.cs" Inherits="MyBetOnMbet.BlogEntryChange" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div style="margin:35px auto 35px auto; width:980px;">
        <div style="margin-bottom:35px;">
          <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" Width="980px" Height="34px" ></asp:TextBox>
            </div>
    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" TextMode="MultiLine" Width="980px" Height="603px"></asp:TextBox>
        <br/> <br/> <br/> <br/> <br/>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="X-Large" Height="44px" Text="Update" Width="127px" OnClick="Button1_Click" />
              <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="X-Large" Height="44px" Text="Delete" Width="127px" OnClick="Button2_Click" />
        </div>
    
</asp:Content>
