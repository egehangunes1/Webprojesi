<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Site1.Master" AutoEventWireup="true" CodeBehind="paylasdenetleme.aspx.cs" Inherits="WebProje1.Yonetim.paylasdenetleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Paylaşım Denetleme
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form id="form1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="309px" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="isim" HeaderText="isim" SortExpression="isim" />
            <asp:BoundField DataField="aciklama1" HeaderText="aciklama1" SortExpression="aciklama1" />
            <asp:BoundField DataField="kategoriID" HeaderText="kategoriID" SortExpression="kategoriID" />
            <asp:BoundField DataField="resim" HeaderText="resim" SortExpression="resim" />
        </Columns>
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" DeleteCommand="DELETE FROM [PaylasimVeritabanı] WHERE [id] = @id" InsertCommand="INSERT INTO [PaylasimVeritabanı] ([isim], [aciklama1], [kategoriID], [resim]) VALUES (@isim, @aciklama1, @kategoriID, @resim)" SelectCommand="SELECT * FROM [PaylasimVeritabanı]" UpdateCommand="UPDATE [PaylasimVeritabanı] SET [isim] = @isim, [aciklama1] = @aciklama1, [kategoriID] = @kategoriID, [resim] = @resim WHERE [id] = @id">
             <DeleteParameters>
                 <asp:Parameter Name="id" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="isim" Type="String" />
                 <asp:Parameter Name="aciklama1" Type="String" />
                 <asp:Parameter Name="kategoriID" Type="Int32" />
                 <asp:Parameter Name="resim" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="isim" Type="String" />
                 <asp:Parameter Name="aciklama1" Type="String" />
                 <asp:Parameter Name="kategoriID" Type="Int32" />
                 <asp:Parameter Name="resim" Type="String" />
                 <asp:Parameter Name="id" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
         </form>
</asp:Content>
