<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Site1.Master" AutoEventWireup="true" CodeBehind="paylasekle.aspx.cs" Inherits="WebProje1.Yonetim.paylasekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Paylaşım Ekle
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Basic form elements</h4>
                  <p class="card-description">
                    Basic form elements
                  </p>
                  <form class="forms-sample" runat="server">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT * FROM [KategoriVeritabanı]"></asp:SqlDataSource>
                    <div class="form-group">
                      <label for="exampleInputName1">Name</label>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Soru Başlık ismi">

                        </asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Açıklama</label>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" placeholder="Soru hakkında açıklama">

                        </asp:TextBox>
                    </div>
                       <div class="form-group">
                      <label for="exampleInputEmail3">Kategori
                          <asp:DropDownList ID="DropDownList2" runat="server" Height="23px" Width="212px" DataSourceID="SqlDataSource1" DataTextField="adi" DataValueField="id">
                           </asp:DropDownList>
                           </label>
                           &nbsp;</div>
                    <div class="form-group">
                      <label>Soru pdfi</label>
                      <input type="file" name="sorupdf" class="file-upload-default">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control-file-upload-info" />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label" Width="200px"></asp:Label>
                    </div>
                      <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn btn-gradient-primary mr-2" OnClick="Button1_Click"/>

                  </form>
                </div>
              </div>
            </div>
</asp:Content>
