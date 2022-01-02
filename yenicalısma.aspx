<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="yenicalısma.aspx.cs" Inherits="covid19.yenicalısma" %>
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="#000099">***</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>ÇALIŞMA GÜNÜ:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>ÇALIŞMA GÜNÜ 2:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Covid19ConnectionString %>" DeleteCommand="DELETE FROM [PERSONEL_CALISMA_TARIHLERI] WHERE [CAL_ID] = @CAL_ID" InsertCommand="INSERT INTO [PERSONEL_CALISMA_TARIHLERI] ([CAL_PER_ID], [CAL_BAS_TAR], [CAL_BIT_TAR]) VALUES (@CAL_PER_ID, @CAL_BAS_TAR, @CAL_BIT_TAR)" SelectCommand="SELECT * FROM [PERSONEL_CALISMA_TARIHLERI]" UpdateCommand="UPDATE [PERSONEL_CALISMA_TARIHLERI] SET [CAL_PER_ID] = @CAL_PER_ID, [CAL_BAS_TAR] = @CAL_BAS_TAR, [CAL_BIT_TAR] = @CAL_BIT_TAR WHERE [CAL_ID] = @CAL_ID">
                <DeleteParameters>
                    <asp:Parameter Name="CAL_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="CAL_PER_ID" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox2" Name="CAL_BAS_TAR" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="CAL_BIT_TAR" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CAL_PER_ID" Type="Int32" />
                    <asp:Parameter Name="CAL_BAS_TAR" Type="String" />
                    <asp:Parameter Name="CAL_BIT_TAR" Type="String" />
                    <asp:Parameter Name="CAL_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    </table>
</asp:Content>
