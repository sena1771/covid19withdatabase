<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="yenihastalık.aspx.cs" Inherits="covid19.yenihastalık" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 600%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>Personel ID:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="#003399">***</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Hastalık Adı:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Hastalık Tarihi:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Reçete ID:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Hastalık Tipi:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Covid19ConnectionString %>" DeleteCommand="DELETE FROM [PERSONEL_HASTALIKLARI] WHERE [HAS_ID] = @HAS_ID" InsertCommand="INSERT INTO [PERSONEL_HASTALIKLARI] ([HAS_ADI], [HAS_TARİH], [HAS_RECETE_ID], [HAS_PER_ID], [HAS_TIPI]) VALUES (@HAS_ADI, @HAS_TARİH, @HAS_RECETE_ID, @HAS_PER_ID, @HAS_TIPI)" SelectCommand="SELECT * FROM [PERSONEL_HASTALIKLARI]" UpdateCommand="UPDATE [PERSONEL_HASTALIKLARI] SET [HAS_ADI] = @HAS_ADI, [HAS_TARİH] = @HAS_TARİH, [HAS_RECETE_ID] = @HAS_RECETE_ID, [HAS_PER_ID] = @HAS_PER_ID, [HAS_TIPI] = @HAS_TIPI WHERE [HAS_ID] = @HAS_ID">
                <DeleteParameters>
                    <asp:Parameter Name="HAS_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="HAS_ADI" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="HAS_TARİH" PropertyName="Text" Type="DateTime" />
                    <asp:ControlParameter ControlID="TextBox4" Name="HAS_RECETE_ID" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox1" Name="HAS_PER_ID" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox5" Name="HAS_TIPI" PropertyName="Text" Type="Int32" />
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
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
