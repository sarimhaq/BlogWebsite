<%@ Page Title="" Language="C#" MasterPageFile="~/Mbet.Master" AutoEventWireup="true" CodeBehind="DirtyBlogList.aspx.cs" Inherits="MyBetOnMbet.DirtyBlogList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div style="width:980px; margin:auto; margin-top:35px;">
    <asp:GridView ID="GridView1" runat="server" Width="100%" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BlogID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="BlogID" HeaderText="BlogID" InsertVisible="False" ReadOnly="True" SortExpression="BlogID" />
            <asp:BoundField DataField="Heading" HeaderText="Heading" SortExpression="Heading" />
            <asp:BoundField DataField="BlogDate" HeaderText="BlogDate" SortExpression="BlogDate" />
            <asp:BoundField DataField="BlogMonth" HeaderText="BlogMonth" SortExpression="BlogMonth" />
            <asp:BoundField DataField="BlogImage" HeaderText="BlogImage" SortExpression="BlogImage" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />


    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pointintimecs %>" DeleteCommand="DELETE FROM [BlogEnteries] WHERE [BlogID] = @original_BlogID AND [Heading] = @original_Heading AND [BlogDate] = @original_BlogDate AND [BlogMonth] = @original_BlogMonth AND (([BlogImage] = @original_BlogImage) OR ([BlogImage] IS NULL AND @original_BlogImage IS NULL))" InsertCommand="INSERT INTO [BlogEnteries] ([Heading], [BlogDate], [BlogMonth], [BlogImage]) VALUES (@Heading, @BlogDate, @BlogMonth, @BlogImage)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [BlogID], [Heading], [BlogDate], [BlogMonth], [BlogImage] FROM [BlogEnteries] ORDER BY [BlogID] DESC" UpdateCommand="UPDATE [BlogEnteries] SET [Heading] = @Heading, [BlogDate] = @BlogDate, [BlogMonth] = @BlogMonth, [BlogImage] = @BlogImage WHERE [BlogID] = @original_BlogID AND [Heading] = @original_Heading AND [BlogDate] = @original_BlogDate AND [BlogMonth] = @original_BlogMonth AND (([BlogImage] = @original_BlogImage) OR ([BlogImage] IS NULL AND @original_BlogImage IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_BlogID" Type="Int32" />
                <asp:Parameter Name="original_Heading" Type="String" />
                <asp:Parameter Name="original_BlogDate" Type="DateTime" />
                <asp:Parameter Name="original_BlogMonth" Type="String" />
                <asp:Parameter Name="original_BlogImage" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Heading" Type="String" />
                <asp:Parameter Name="BlogDate" Type="DateTime" />
                <asp:Parameter Name="BlogMonth" Type="String" />
                <asp:Parameter Name="BlogImage" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Heading" Type="String" />
                <asp:Parameter Name="BlogDate" Type="DateTime" />
                <asp:Parameter Name="BlogMonth" Type="String" />
                <asp:Parameter Name="BlogImage" Type="String" />
                <asp:Parameter Name="original_BlogID" Type="Int32" />
                <asp:Parameter Name="original_Heading" Type="String" />
                <asp:Parameter Name="original_BlogDate" Type="DateTime" />
                <asp:Parameter Name="original_BlogMonth" Type="String" />
                <asp:Parameter Name="original_BlogImage" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
