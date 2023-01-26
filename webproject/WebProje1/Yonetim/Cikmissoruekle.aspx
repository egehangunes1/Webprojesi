<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Site1.Master" AutoEventWireup="true" CodeBehind="Cikmissoruekle.aspx.cs" Inherits="WebProje1.Yonetim.Cikmissoruekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Çıkmış Sınav Soruları ve Cevaplarını ekle
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
                      

                    <div>
                        <div>
                            
                        </div>
                        <br />
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName1">Name</label>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Başlık ismi">

                        </asp:TextBox>
                        <br />
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">açıklama</label>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="açıklama">

                        </asp:TextBox>
                        <br />
                    </div>
                    <div class="form-group">
                      <label>Soru pdfi</label>
                      <input type="file" name="sorupdf" class="file-upload-default">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control-file-upload-info" />
                    </div>
                      <asp:Button ID="Button2" runat="server" Text="Button" CssClass="btn btn-gradient-primary mr-2"/>
                  </form>
                </div>
              </div>
            </div>
</asp:Content>
