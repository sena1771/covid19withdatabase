<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="covidbilgisi.aspx.cs" Inherits="covid19.covidbilgisi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="HAS_ID" DataSourceID="SqlDataSource2" Height="264px" Width="491px" CellSpacing="2" ForeColor="Black">
    <Columns>
        <asp:BoundField DataField="HAS_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="HAS_ID" />
        <asp:BoundField DataField="HAS_ADI" HeaderText="HASTALIK ADI" SortExpression="HAS_ADI" />
        <asp:BoundField DataField="COV_GEC_POZITIF_TAR" HeaderText="COVID POZITIF OLUNAN TARIH" SortExpression="COV_GEC_POZITIF_TAR" />
        <asp:BoundField DataField="COV_GEC_NEGATIF_TARIH" HeaderText="COVID NEGATIF TARIH" SortExpression="COV_GEC_NEGATIF_TARIH" />
        <asp:BoundField DataField="ASI_ADI" HeaderText="ASI ADI" SortExpression="ASI_ADI" />
        <asp:BoundField DataField="PER_ID" HeaderText="PERSONEL ID" SortExpression="PER_ID" />
        <asp:BoundField DataField="SEMPTOM_ADI" HeaderText="SEMPTOM ADI" SortExpression="SEMPTOM_ADI" />
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
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Covid19ConnectionString %>" SelectCommand="SELECT PERSONEL_HASTALIKLARI.HAS_ID, PERSONEL_HASTALIKLARI.HAS_ADI, COVID_GECMISI.COV_GEC_POZITIF_TAR, COVID_GECMISI.COV_GEC_NEGATIF_TARIH, ASI_LISTESI.ASI_ADI, COVID_TEMASLILARI.PER_ID, SEMPTOM_LISTESI.SEMPTOM_ADI FROM COVID_GECMISI INNER JOIN COVID_TEMASLILARI ON COVID_GECMISI.COV_GEC_ID = COVID_TEMASLILARI.COV_ID INNER JOIN COVID_SEMPTOMLARI ON COVID_GECMISI.COV_GEC_ID = COVID_SEMPTOMLARI.COV_GEC_ID INNER JOIN SEMPTOM_LISTESI ON COVID_SEMPTOMLARI.SEMPTOM_ID = SEMPTOM_LISTESI.SEMTOPM_ID INNER JOIN PERSONEL_HASTALIKLARI INNER JOIN HASTALIK_SEMPTOMLARI ON PERSONEL_HASTALIKLARI.HAS_ID = HASTALIK_SEMPTOMLARI.HAS_ID ON SEMPTOM_LISTESI.SEMTOPM_ID = HASTALIK_SEMPTOMLARI.SEMPTOM_ID CROSS JOIN ASI_LISTESI INNER JOIN PERSONEL_ASILARI ON ASI_LISTESI.ASI_ID = PERSONEL_ASILARI.ASI_ID WHERE (PERSONEL_HASTALIKLARI.HAS_ADI = N'covid')"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
