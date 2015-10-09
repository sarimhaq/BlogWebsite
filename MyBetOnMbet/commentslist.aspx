<%@ Page Title="" Language="C#" MasterPageFile="~/Mbet.Master" AutoEventWireup="true" CodeBehind="commentslist.aspx.cs" Inherits="MyBetOnMbet.commentslist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div style="margin:auto; margin-top:35px; width:980px;">
    <asp:GridView ID="GridView1" runat="server" Width="100%" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CommentID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="CommentID" HeaderText="CommentID" InsertVisible="False" ReadOnly="True" SortExpression="CommentID" />
            <asp:BoundField DataField="BlogID" HeaderText="BlogID" SortExpression="BlogID" />
            <asp:BoundField DataField="CommentText" HeaderText="CommentText" SortExpression="CommentText" />
            <asp:BoundField DataField="commentdate" HeaderText="commentdate" SortExpression="commentdate" />
            <asp:BoundField DataField="commentname" HeaderText="commentname" SortExpression="commentname" />
        </Columns>

    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pointintimecs %>" DeleteCommand="DELETE FROM [Comments] WHERE [CommentID] = @original_CommentID AND (([BlogID] = @original_BlogID) OR ([BlogID] IS NULL AND @original_BlogID IS NULL)) AND [CommentText] = @original_CommentText AND (([commentdate] = @original_commentdate) OR ([commentdate] IS NULL AND @original_commentdate IS NULL)) AND (([commentname] = @original_commentname) OR ([commentname] IS NULL AND @original_commentname IS NULL))" InsertCommand="INSERT INTO [Comments] ([BlogID], [CommentText], [commentdate], [commentname]) VALUES (@BlogID, @CommentText, @commentdate, @commentname)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Comments] ORDER BY [CommentID] DESC" UpdateCommand="UPDATE [Comments] SET [BlogID] = @BlogID, [CommentText] = @CommentText, [commentdate] = @commentdate, [commentname] = @commentname WHERE [CommentID] = @original_CommentID AND (([BlogID] = @original_BlogID) OR ([BlogID] IS NULL AND @original_BlogID IS NULL)) AND [CommentText] = @original_CommentText AND (([commentdate] = @original_commentdate) OR ([commentdate] IS NULL AND @original_commentdate IS NULL)) AND (([commentname] = @original_commentname) OR ([commentname] IS NULL AND @original_commentname IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_CommentID" Type="Int32" />
                <asp:Parameter Name="original_BlogID" Type="Int32" />
                <asp:Parameter Name="original_CommentText" Type="String" />
                <asp:Parameter Name="original_commentdate" Type="DateTime" />
                <asp:Parameter Name="original_commentname" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BlogID" Type="Int32" />
                <asp:Parameter Name="CommentText" Type="String" />
                <asp:Parameter Name="commentdate" Type="DateTime" />
                <asp:Parameter Name="commentname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BlogID" Type="Int32" />
                <asp:Parameter Name="CommentText" Type="String" />
                <asp:Parameter Name="commentdate" Type="DateTime" />
                <asp:Parameter Name="commentname" Type="String" />
                <asp:Parameter Name="original_CommentID" Type="Int32" />
                <asp:Parameter Name="original_BlogID" Type="Int32" />
                <asp:Parameter Name="original_CommentText" Type="String" />
                <asp:Parameter Name="original_commentdate" Type="DateTime" />
                <asp:Parameter Name="original_commentname" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
