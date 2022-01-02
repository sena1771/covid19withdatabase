<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ekleme1.aspx.cs" Inherits="covid19.ekleme1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>Elemanlar Arası En Çok Görülen Hastalıklar<br />
    <br />
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="HAS_ADI" HeaderText="HASTALIK ADI" SortExpression="HAS_ADI" />
            <asp:BoundField DataField="toplam" HeaderText="toplam" ReadOnly="True" SortExpression="toplam" />
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
    <br />
    </strong>
    <br />
    <strong>Çanakkale&#39;de En Çok Görülen Hastalıklar<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="173px" Width="425px">
        <Columns>
            <asp:BoundField DataField="HAS_ADI" HeaderText="HASTALIK ADI" SortExpression="HAS_ADI" />
            <asp:BoundField DataField="IL_AD" HeaderText="IL ADI" SortExpression="IL_AD" />
            <asp:BoundField DataField="HAS_TIP_ADI" HeaderText="HASTALIK TIPI" SortExpression="HAS_TIP_ADI" />
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
    <br />
    </strong>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="SEMPTOM_ADI" HeaderText="COVIDLILER ARASINDAKİ EN SIK OLAN SEMPTOMLAR" SortExpression="SEMPTOM_ADI" />
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
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Covid19ConnectionString %>" SelectCommand="SELECT DISTINCT TOP (100) PERCENT SEMPTOM_LISTESI.SEMPTOM_ADI FROM COVID_GECMISI INNER JOIN PERSONELLER ON COVID_GECMISI.COV_GEC_PER_ID = PERSONELLER.PER_ID INNER JOIN COVID_SEMPTOMLARI ON COVID_GECMISI.COV_GEC_ID = COVID_SEMPTOMLARI.COV_GEC_ID INNER JOIN SEMPTOM_LISTESI ON COVID_SEMPTOMLARI.SEMPTOM_ID = SEMPTOM_LISTESI.SEMTOPM_ID"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Covid19ConnectionString %>" SelectCommand="SELECT TOP (3) PERSONEL_HASTALIKLARI.HAS_ADI, ILLER.IL_AD, HASTALIK_TIPLERI.HAS_TIP_ADI FROM HASTALIK_SEMPTOMLARI INNER JOIN PERSONEL_HASTALIKLARI ON HASTALIK_SEMPTOMLARI.HAS_ID = PERSONEL_HASTALIKLARI.HAS_ID INNER JOIN HASTALIK_TIPLERI ON PERSONEL_HASTALIKLARI.HAS_TIPI = HASTALIK_TIPLERI.HAS_TIP_ID INNER JOIN PERSONELLER ON PERSONEL_HASTALIKLARI.HAS_PER_ID = PERSONELLER.PER_ID INNER JOIN ILLER ON PERSONELLER.PER_DOGUM_YERI = ILLER.IL_ID WHERE (ILLER.IL_AD = N'ÇANAKKALE') GROUP BY PERSONEL_HASTALIKLARI.HAS_ADI, ILLER.IL_AD, HASTALIK_TIPLERI.HAS_TIP_ADI"></asp:SqlDataSource>
    &nbsp;<strong>Kan Grubuna Göre COVID&#39;e Yakalanma Sıklığı</strong><br />
    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource5" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="PER_KANGRUBU" HeaderText="KAN GRUBU" SortExpression="PER_KANGRUBU" />
            <asp:BoundField DataField="Kaç kez" HeaderText="Kaç kez" ReadOnly="True" SortExpression="Kaç kez" />
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
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Covid19ConnectionString %>" SelectCommand="SELECT PERSONELLER.PER_KANGRUBU, COUNT_BIG(*) AS [Kaç kez] FROM COVID_GECMISI INNER JOIN PERSONELLER ON COVID_GECMISI.COV_GEC_PER_ID = PERSONELLER.PER_ID INNER JOIN PERSONEL_HASTALIKLARI ON PERSONELLER.PER_ID = PERSONEL_HASTALIKLARI.HAS_PER_ID GROUP BY PERSONELLER.PER_KANGRUBU"></asp:SqlDataSource>
    <span><strong>&nbsp;Aşı vurulma durumuna göre COVID hastalığına yakalanma</strong></span><br />
    <br />
    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource6" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="PER_AD" HeaderText="PERSONEL ADI" SortExpression="PER_AD" />
            <asp:BoundField DataField="PER_SOYAD" HeaderText="PERSONEL SOYADI" SortExpression="PER_SOYAD" />
            <asp:BoundField DataField="ASI_ADI" HeaderText="ASI ADI" SortExpression="ASI_ADI" />
            <asp:BoundField DataField="KAÇ KEZ" HeaderText="KAÇ KEZ" ReadOnly="True" SortExpression="KAÇ KEZ" />
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
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Covid19ConnectionString %>" SelectCommand="SELECT PERSONELLER.PER_AD, PERSONELLER.PER_SOYAD, ASI_LISTESI.ASI_ADI, COUNT(*) AS [KAÇ KEZ] FROM ASI_LISTESI INNER JOIN PERSONEL_ASILARI ON ASI_LISTESI.ASI_ID = PERSONEL_ASILARI.ASI_ID INNER JOIN PERSONELLER ON PERSONEL_ASILARI.ASI_PER_ID = PERSONELLER.PER_ID INNER JOIN COVID_GECMISI ON PERSONELLER.PER_ID = COVID_GECMISI.COV_GEC_PER_ID GROUP BY PERSONELLER.PER_AD, PERSONELLER.PER_SOYAD, ASI_LISTESI.ASI_ADI"></asp:SqlDataSource>
    <span><strong>Biontech aşısı olan ve belirli bir hastalığı önceden geçirmiş olan çalışanlardan COVID’e yakalananlar </strong></span>
    <br />
    <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource7" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="ASI_ADI" HeaderText="ASI ADI" SortExpression="ASI_ADI" />
            <asp:BoundField DataField="HAS_ADI" HeaderText="HASTALIK ADI" SortExpression="HAS_ADI" />
            <asp:BoundField DataField="COV_GEC_PER_ID" HeaderText="PERSONEL ID" SortExpression="COV_GEC_PER_ID" />
            <asp:BoundField DataField="PER_AD" HeaderText="PERSONEL AD" SortExpression="PER_AD" />
            <asp:BoundField DataField="PER_SOYAD" HeaderText="PERSONEL SOYAD" SortExpression="PER_SOYAD" />
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
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:Covid19ConnectionString %>" SelectCommand="SELECT ASI_LISTESI.ASI_ADI, PERSONEL_HASTALIKLARI.HAS_ADI, COVID_GECMISI.COV_GEC_PER_ID, PERSONELLER.PER_AD, PERSONELLER.PER_SOYAD FROM ASI_LISTESI INNER JOIN PERSONEL_ASILARI ON ASI_LISTESI.ASI_ID = PERSONEL_ASILARI.ASI_ID INNER JOIN PERSONEL_HASTALIKLARI INNER JOIN HASTALIK_TIPLERI ON PERSONEL_HASTALIKLARI.HAS_TIPI = HASTALIK_TIPLERI.HAS_TIP_ID INNER JOIN PERSONELLER ON PERSONEL_HASTALIKLARI.HAS_PER_ID = PERSONELLER.PER_ID INNER JOIN COVID_GECMISI ON PERSONELLER.PER_ID = COVID_GECMISI.COV_GEC_PER_ID ON PERSONEL_ASILARI.ASI_PER_ID = PERSONELLER.PER_ID GROUP BY ASI_LISTESI.ASI_ID, ASI_LISTESI.ASI_ADI, PERSONEL_HASTALIKLARI.HAS_ADI, COVID_GECMISI.COV_GEC_PER_ID, PERSONELLER.PER_AD, PERSONELLER.PER_SOYAD HAVING (ASI_LISTESI.ASI_ID = 1)"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Covid19ConnectionString %>" SelectCommand="SELECT TOP (3) HAS_ADI, COUNT(HAS_ADI) AS toplam FROM PERSONEL_HASTALIKLARI GROUP BY HAS_ADI ORDER BY toplam DESC"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
