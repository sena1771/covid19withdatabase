<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="yenipersonelekle.aspx.cs" Inherits="covid19.yenipersonelekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 600%;
    }
    .auto-style2 {
        font-weight: bold;
        height: 29px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td><b>Personel&nbsp; TC:</b><asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox>
            <b>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="#66FF33">*</asp:RequiredFieldValidator>
            </b></td>
    </tr>
    <tr>
        <td><b>Personel Ad:</b><asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><b>Personel Soyad:</b><asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><b>Personel Kan Grubu:</b><asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><b>Doğduğu Yer:</b><asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><b>Pozisyonu:</b><asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><b>Maaş:</b><asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style2"></asp:TextBox>
            <b>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </b>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="KAYDET" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Covid19ConnectionString %>" DeleteCommand="DELETE FROM [PERSONELLER] WHERE [PER_ID] = @PER_ID" InsertCommand="INSERT INTO [PERSONELLER] ([PER_KIMLIKNO], [PER_AD], [PER_SOYAD], [PER_KANGRUBU], [PER_DOGUM_YERI], [PER_POZISYON], [PER_MAAS]) VALUES (@PER_KIMLIKNO, @PER_AD, @PER_SOYAD, @PER_KANGRUBU, @PER_DOGUM_YERI, @PER_POZISYON, @PER_MAAS)" SelectCommand="SELECT * FROM [PERSONELLER]" UpdateCommand="UPDATE [PERSONELLER] SET [PER_KIMLIKNO] = @PER_KIMLIKNO, [PER_AD] = @PER_AD, [PER_SOYAD] = @PER_SOYAD, [PER_KANGRUBU] = @PER_KANGRUBU, [PER_DOGUM_YERI] = @PER_DOGUM_YERI, [PER_POZISYON] = @PER_POZISYON, [PER_MAAS] = @PER_MAAS WHERE [PER_ID] = @PER_ID">
                <DeleteParameters>
                    <asp:Parameter Name="PER_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="PER_KIMLIKNO" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox2" Name="PER_AD" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="PER_SOYAD" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox4" Name="PER_KANGRUBU" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox5" Name="PER_DOGUM_YERI" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox6" Name="PER_POZISYON" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox7" Name="PER_MAAS" PropertyName="Text" Type="Double" />
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
        </td>
    </tr>
</table>
</asp:Content>
