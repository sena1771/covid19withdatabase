<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="calısmasaati.aspx.cs" Inherits="covid19.calısmasaati" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" DataKeyNames="CAL_ID" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="CAL_ID" HeaderText="ID" SortExpression="CAL_ID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="CAL_PER_ID" HeaderText="PERSONEL ID" SortExpression="CAL_PER_ID" />
            <asp:BoundField DataField="CAL_BAS_TAR" HeaderText="ÇALIŞTIĞI GÜN" SortExpression="CAL_BAS_TAR" />
            <asp:BoundField DataField="CAL_BIT_TAR" HeaderText="CALITIGI 2.GÜN" SortExpression="CAL_BIT_TAR" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#CCCCCC" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Covid19ConnectionString %>" SelectCommand="SELECT [CAL_ID], [CAL_PER_ID], [CAL_BAS_TAR], [CAL_BIT_TAR] FROM [PERSONEL_CALISMA_TARIHLERI]" DeleteCommand="DELETE FROM [PERSONEL_CALISMA_TARIHLERI] WHERE [CAL_ID] = @CAL_ID" InsertCommand="INSERT INTO [PERSONEL_CALISMA_TARIHLERI] ([CAL_PER_ID], [CAL_BAS_TAR], [CAL_BIT_TAR]) VALUES (@CAL_PER_ID, @CAL_BAS_TAR, @CAL_BIT_TAR)" UpdateCommand="UPDATE [PERSONEL_CALISMA_TARIHLERI] SET [CAL_PER_ID] = @CAL_PER_ID, [CAL_BAS_TAR] = @CAL_BAS_TAR, [CAL_BIT_TAR] = @CAL_BIT_TAR WHERE [CAL_ID] = @CAL_ID">
        <DeleteParameters>
            <asp:Parameter Name="CAL_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CAL_PER_ID" Type="Int32" />
            <asp:Parameter Name="CAL_BAS_TAR" Type="String" />
            <asp:Parameter Name="CAL_BIT_TAR" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CAL_PER_ID" Type="Int32" />
            <asp:Parameter Name="CAL_BAS_TAR" Type="String" />
            <asp:Parameter Name="CAL_BIT_TAR" Type="String" />
            <asp:Parameter Name="CAL_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
