<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="personellistesi.aspx.cs" Inherits="covid19.personellistesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PER_ID" DataSourceID="SqlDataSource1" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="PER_ID" HeaderText="NO" InsertVisible="False" ReadOnly="True" SortExpression="PER_ID" />
            <asp:BoundField DataField="PER_KIMLIKNO" HeaderText="KIMLIK NO" SortExpression="PER_KIMLIKNO" />
            <asp:BoundField DataField="PER_AD" HeaderText="AD" SortExpression="PER_AD" />
            <asp:BoundField DataField="PER_SOYAD" HeaderText="SOYAD" SortExpression="PER_SOYAD" />
            <asp:BoundField DataField="PER_KANGRUBU" HeaderText="KAN GRUBU" SortExpression="PER_KANGRUBU" />
            <asp:BoundField DataField="PER_DOGUM_YERI" HeaderText="DOGUM YERI" SortExpression="PER_DOGUM_YERI" />
            <asp:BoundField DataField="PER_POZISYON" HeaderText="POZISYON" SortExpression="PER_POZISYON" />
            <asp:BoundField DataField="PER_MAAS" HeaderText="MAAS" SortExpression="PER_MAAS" />
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Covid19ConnectionString %>" SelectCommand="SELECT * FROM [PERSONELLER]" DeleteCommand="DELETE FROM [PERSONELLER] WHERE [PER_ID] = @PER_ID" InsertCommand="INSERT INTO [PERSONELLER] ([PER_KIMLIKNO], [PER_AD], [PER_SOYAD], [PER_KANGRUBU], [PER_DOGUM_YERI], [PER_POZISYON], [PER_MAAS]) VALUES (@PER_KIMLIKNO, @PER_AD, @PER_SOYAD, @PER_KANGRUBU, @PER_DOGUM_YERI, @PER_POZISYON, @PER_MAAS)" UpdateCommand="UPDATE [PERSONELLER] SET [PER_KIMLIKNO] = @PER_KIMLIKNO, [PER_AD] = @PER_AD, [PER_SOYAD] = @PER_SOYAD, [PER_KANGRUBU] = @PER_KANGRUBU, [PER_DOGUM_YERI] = @PER_DOGUM_YERI, [PER_POZISYON] = @PER_POZISYON, [PER_MAAS] = @PER_MAAS WHERE [PER_ID] = @PER_ID">
        <DeleteParameters>
            <asp:Parameter Name="PER_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PER_KIMLIKNO" Type="String" />
            <asp:Parameter Name="PER_AD" Type="String" />
            <asp:Parameter Name="PER_SOYAD" Type="String" />
            <asp:Parameter Name="PER_KANGRUBU" Type="String" />
            <asp:Parameter Name="PER_DOGUM_YERI" Type="Int32" />
            <asp:Parameter Name="PER_POZISYON" Type="Int32" />
            <asp:Parameter Name="PER_MAAS" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PER_KIMLIKNO" Type="String" />
            <asp:Parameter Name="PER_AD" Type="String" />
            <asp:Parameter Name="PER_SOYAD" Type="String" />
            <asp:Parameter Name="PER_KANGRUBU" Type="String" />
            <asp:Parameter Name="PER_DOGUM_YERI" Type="Int32" />
            <asp:Parameter Name="PER_POZISYON" Type="Int32" />
            <asp:Parameter Name="PER_MAAS" Type="Double" />
            <asp:Parameter Name="PER_ID" Type="Int32" />
        </UpdateParameters>
        </asp:SqlDataSource>
</p>
</asp:Content>
