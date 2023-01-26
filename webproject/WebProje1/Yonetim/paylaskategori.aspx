<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Site1.Master" AutoEventWireup="true" CodeBehind="paylaskategori.aspx.cs" Inherits="WebProje1.Yonetim.paylaskategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Paylaş Kategori
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Basic form elements</h4>
                  <p class="card-description">
                      Sorular için kategori giriniz</p>
                 
                    <div class="form-group">
                   
                        <asp:TextBox ID="TextBox1" runat="server" Width="264px"></asp:TextBox>
                        </div>
                      <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary mr-2" OnClick="Button1_Click"/>
                  
                </div>
              </div>
        <br />
        <br />
        <br />
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" DeleteCommand="DELETE FROM [KategoriVeritabanı] WHERE [id] = @id" InsertCommand="INSERT INTO [KategoriVeritabanı] ([adi]) VALUES (@adi)" SelectCommand="SELECT * FROM [KategoriVeritabanı]" UpdateCommand="UPDATE [KategoriVeritabanı] SET [adi] = @adi WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="adi" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="adi" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" CssClass="table table-borderless" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
            </Columns>
        </asp:GridView>

    </form>
</asp:Content>
