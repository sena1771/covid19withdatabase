<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="personelhastalık.aspx.cs" Inherits="covid19.personelhastalık" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="HAS_ID" DataSourceID="SqlDataSource1" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="HAS_ID" HeaderText="HASTALIK ID" InsertVisible="False" ReadOnly="True" SortExpression="HAS_ID" />
        <asp:BoundField DataField="HAS_ADI" HeaderText="HASTALIK ADI" SortExpression="HAS_ADI" />
        <asp:BoundField DataField="HAS_TARİH" HeaderText="HASTALIK TARİHİ" SortExpression="HAS_TARİH" />
        <asp:BoundField DataField="HAS_RECETE_ID" HeaderText="REÇETE ID" SortExpression="HAS_RECETE_ID" />
        <asp:BoundField DataField="HAS_PER_ID" HeaderText="PERSONEL ID" SortExpression="HAS_PER_ID" />
        <asp:BoundField DataField="HAS_TIPI" HeaderText="HASTALIK TİPİ" SortExpression="HAS_TIPI" />
        <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" ></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
    <RowStyle BackColor="White" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Covid19ConnectionString %>" SelectCommand="SELECT * FROM [PERSONEL_HASTALIKLARI]" DeleteCommand="DELETE FROM [PERSONEL_HASTALIKLARI] WHERE [HAS_ID] = @HAS_ID" InsertCommand="INSERT INTO [PERSONEL_HASTALIKLARI] ([HAS_ADI], [HAS_TARİH], [HAS_RECETE_ID], [HAS_PER_ID], [HAS_TIPI]) VALUES (@HAS_ADI, @HAS_TARİH, @HAS_RECETE_ID, @HAS_PER_ID, @HAS_TIPI)" UpdateCommand="UPDATE [PERSONEL_HASTALIKLARI] SET [HAS_ADI] = @HAS_ADI, [HAS_TARİH] = @HAS_TARİH, [HAS_RECETE_ID] = @HAS_RECETE_ID, [HAS_PER_ID] = @HAS_PER_ID, [HAS_TIPI] = @HAS_TIPI WHERE [HAS_ID] = @HAS_ID">
    <DeleteParameters>
        <asp:Parameter Name="HAS_ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="HAS_ADI" Type="String" />
        <asp:Parameter Name="HAS_TARİH" Type="DateTime" />
        <asp:Parameter Name="HAS_RECETE_ID" Type="Int32" />
        <asp:Parameter Name="HAS_PER_ID" Type="Int32" />
        <asp:Parameter Name="HAS_TIPI" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="HAS_ADI" Type="String" />
        <asp:Parameter Name="HAS_TARİH" Type="DateTime" />
        <asp:Parameter Name="HAS_RECETE_ID" Type="Int32" />
        <asp:Parameter Name="HAS_PER_ID" Type="Int32" />
        <asp:Parameter Name="HAS_TIPI" Type="Int32" />
        <asp:Parameter Name="HAS_ID" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
