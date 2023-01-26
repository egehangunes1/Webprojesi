<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Site1.Master" AutoEventWireup="true" CodeBehind="Denemesınavdenetle.aspx.cs" Inherits="WebProje1.Yonetim.Denemesınavdenetle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" CssClass="table table-borderless" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="isim" HeaderText="isim" SortExpression="isim" />
            <asp:BoundField DataField="aciklama" HeaderText="aciklama" SortExpression="aciklama" />
            <asp:BoundField DataField="resim" HeaderText="resim" SortExpression="resim" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" DeleteCommand="DELETE FROM [DenemesınavVeritabanı] WHERE [id] = @id" InsertCommand="INSERT INTO [DenemesınavVeritabanı] ([isim], [aciklama], [resim]) VALUES (@isim, @aciklama, @resim)" SelectCommand="SELECT * FROM [DenemesınavVeritabanı]" UpdateCommand="UPDATE [DenemesınavVeritabanı] SET [isim] = @isim, [aciklama] = @aciklama, [resim] = @resim WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="isim" Type="String" />
                <asp:Parameter Name="aciklama" Type="String" />
                <asp:Parameter Name="resim" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="isim" Type="String" />
                <asp:Parameter Name="aciklama" Type="String" />
                <asp:Parameter Name="resim" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
