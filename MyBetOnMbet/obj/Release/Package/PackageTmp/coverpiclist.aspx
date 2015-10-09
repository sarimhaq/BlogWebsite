<%@ Page Title="" Language="C#" MasterPageFile="~/Mbet.Master" AutoEventWireup="true" CodeBehind="coverpiclist.aspx.cs" Inherits="MyBetOnMbet.coverpiclist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
<div style="width:980px; margin:auto; margin-top:35px;">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PictureID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1037px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="PictureID" HeaderText="PictureID" InsertVisible="False" ReadOnly="True" SortExpression="PictureID" />
            <asp:BoundField DataField="BlogUrl" HeaderText="BlogUrl" SortExpression="BlogUrl" />
            <asp:BoundField DataField="PictureURL" HeaderText="PictureURL" SortExpression="PictureURL" />
        </Columns>
    </asp:GridView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pointintimecs %>" DeleteCommand="DELETE FROM [SilderPicture] WHERE [PictureID] = @original_PictureID AND [BlogUrl] = @original_BlogUrl AND [PictureURL] = @original_PictureURL" InsertCommand="INSERT INTO [SilderPicture] ([BlogUrl], [PictureURL]) VALUES (@BlogUrl, @PictureURL)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SilderPicture] ORDER BY [PictureID] DESC" UpdateCommand="UPDATE [SilderPicture] SET [BlogUrl] = @BlogUrl, [PictureURL] = @PictureURL WHERE [PictureID] = @original_PictureID AND [BlogUrl] = @original_BlogUrl AND [PictureURL] = @original_PictureURL">
        <DeleteParameters>
            <asp:Parameter Name="original_PictureID" Type="Int32" />
            <asp:Parameter Name="original_BlogUrl" Type="String" />
            <asp:Parameter Name="original_PictureURL" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BlogUrl" Type="String" />
            <asp:Parameter Name="PictureURL" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="BlogUrl" Type="String" />
            <asp:Parameter Name="PictureURL" Type="String" />
            <asp:Parameter Name="original_PictureID" Type="Int32" />
            <asp:Parameter Name="original_BlogUrl" Type="String" />
            <asp:Parameter Name="original_PictureURL" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
