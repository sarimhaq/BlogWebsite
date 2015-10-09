<%@ Page Title="" Language="C#" MasterPageFile="~/Mbet.Master" AutoEventWireup="true" CodeBehind="BlogList.aspx.cs" Inherits="MyBetOnMbet.BlogList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div style="margin:35px auto 35px auto; width:980px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BlogID" AllowPaging="True" AllowSorting="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellSpacing="4" DataSourceID="SqlDataSource1" Font-Size="X-Large" ForeColor="Black" GridLines="None" HorizontalAlign="Justify" Width="980px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="BlogID" HeaderText="BlogID" InsertVisible="False" ReadOnly="True" SortExpression="BlogID" />
            <asp:BoundField DataField="Heading" HeaderText="Heading" SortExpression="Heading" />
            <asp:BoundField DataField="BlogDate" HeaderText="BlogDate" SortExpression="BlogDate" />
            <asp:BoundField DataField="BlogMonth" HeaderText="BlogMonth" SortExpression="BlogMonth" />
            <asp:BoundField DataField="BlogImage" HeaderText="BlogImage" SortExpression="BlogImage" />
            <asp:BoundField DataField="BlogPost" HeaderText="BlogPost" SortExpression="BlogPost" Visible="False" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pointintimecs %>" DeleteCommand="DELETE FROM [BlogEnteries] WHERE [BlogID] = @original_BlogID AND [Heading] = @original_Heading AND [BlogDate] = @original_BlogDate AND [BlogMonth] = @original_BlogMonth AND (([BlogImage] = @original_BlogImage) OR ([BlogImage] IS NULL AND @original_BlogImage IS NULL)) AND [BlogPost] = @original_BlogPost" InsertCommand="INSERT INTO [BlogEnteries] ([Heading], [BlogDate], [BlogMonth], [BlogImage], [BlogPost]) VALUES (@Heading, @BlogDate, @BlogMonth, @BlogImage, @BlogPost)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [BlogID], [Heading], [BlogDate], [BlogMonth], [BlogImage], [BlogPost] FROM [BlogEnteries] ORDER BY [BlogDate]" UpdateCommand="UPDATE [BlogEnteries] SET [Heading] = @Heading, [BlogDate] = @BlogDate, [BlogMonth] = @BlogMonth, [BlogImage] = @BlogImage, [BlogPost] = @BlogPost WHERE [BlogID] = @original_BlogID AND [Heading] = @original_Heading AND [BlogDate] = @original_BlogDate AND [BlogMonth] = @original_BlogMonth AND (([BlogImage] = @original_BlogImage) OR ([BlogImage] IS NULL AND @original_BlogImage IS NULL)) AND [BlogPost] = @original_BlogPost">
        <DeleteParameters>
            <asp:Parameter Name="original_BlogID" Type="Int32" />
            <asp:Parameter Name="original_Heading" Type="String" />
            <asp:Parameter Name="original_BlogDate" Type="DateTime" />
            <asp:Parameter Name="original_BlogMonth" Type="String" />
            <asp:Parameter Name="original_BlogImage" Type="String" />
            <asp:Parameter Name="original_BlogPost" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Heading" Type="String" />
            <asp:Parameter Name="BlogDate" Type="DateTime" />
            <asp:Parameter Name="BlogMonth" Type="String" />
            <asp:Parameter Name="BlogImage" Type="String" />
            <asp:Parameter Name="BlogPost" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Heading" Type="String" />
            <asp:Parameter Name="BlogDate" Type="DateTime" />
            <asp:Parameter Name="BlogMonth" Type="String" />
            <asp:Parameter Name="BlogImage" Type="String" />
            <asp:Parameter Name="BlogPost" Type="String" />
            <asp:Parameter Name="original_BlogID" Type="Int32" />
            <asp:Parameter Name="original_Heading" Type="String" />
            <asp:Parameter Name="original_BlogDate" Type="DateTime" />
            <asp:Parameter Name="original_BlogMonth" Type="String" />
            <asp:Parameter Name="original_BlogImage" Type="String" />
            <asp:Parameter Name="original_BlogPost" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>
