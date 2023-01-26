<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogRegSayfa.aspx.cs" Inherits="WebProje1.LogRegSayfa" %>


<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Ders çalışma ve sınav rehberi;
      </title>
      <!-- Meta tags -->
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <meta name="keywords" content=""
         />
      <script>
          addEventListener("load", function () { setTimeout(hideURLbar, 0); }, false); function hideURLbar() { window.scrollTo(0, 1); }
      </script>
      <!-- Meta tags -->
      <!--stylesheets-->
      <link href="web/css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//style sheet end here-->
      <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700" rel="stylesheet">
   </head>
   <body>
 
      <div class="mid-class">
         <div class="art-right-w3ls">
            <h2 style="color: #FF0000; font-size: large; font-family: 'Arial Black'">
                Giriş Yap veya Kayıt Ol
            </h2>
            <form action="#" method="post" runat="server">
               <div class="main">
                  <div class="form-left-to-w3l">
                      <asp:TextBox ID="TextBox1" runat="server" placeholder="kullanıcı adınız"></asp:TextBox>
                  </div>
                  <div class="form-left-to-w3l ">
                      <asp:TextBox ID="TextBox2" runat="server" placeholder="şifreniz"></asp:TextBox>
                     <div class="clear"></div>
                  </div>
               </div>
               <div class="left-side-forget">
                  <input type="checkbox" class="checked">
                  <span class="remenber-me">Beni Hatırla </span>
               </div>
               <div class="right-side-forget">
                  <a href="Forgotpass.aspx" class="for">Şifreni mi unuttun...?</a>
               </div>
               <div class="clear"></div>
               <div class="btnn">
                   <asp:Button ID="Button1" runat="server" Text="Giriş Yap" OnClick="Button1_Click1" />
               </div>
            <div class="w3layouts_more-buttn">
               <h3>Hesabınız yok mu?
                  <a href="#content1">Hemen Kayıt Olun..
                  </a>
               </h3>
            </div>

            <!--REGİSTER popup-->
            <div id="content1" class="popup-effect">
               <div class="popup">
                  <!--login form-->
                  <div class="letter-w3ls">
                     <form action="#" method="post">
                        <div class="form-left-to-w3l">
                           <asp:TextBox ID="TextBox3" runat="server" placeholder="Kullanıcı Adı"></asp:TextBox>
                        </div>
                       <div class="form-left-to-w3l">
                            <asp:TextBox ID="TextBox4" runat="server" placeholder="Email Adresi"></asp:TextBox>
                        </div>-->
                        <div class="form-left-to-w3l">
                            <asp:TextBox ID="TextBox5" runat="server" placeholder="Şifre"></asp:TextBox>
                        </div>
                        <div class="form-left-to-w3l margin-zero">
                            <asp:TextBox ID="TextBox6" runat="server" placeholder="Şifre Tekrarı"></asp:TextBox>
                        </div>
                        <div class="btnn">
                           <asp:Button ID="Button2" runat="server" Text="Kayıt Ol" OnClick="Button2_Click2" />
                           <br>
                        </div>
                     </form>
                     <div class="clear"></div>
                  </div>
                  <!--//login form-->
                  <a class="close" href="#">&times;</a>
               </div>
                </form>
            </div>
            <!-- //popup -->
         </div>
         <div class="art-left-w3ls">
            <h1 class="header-w3ls">
               Aramıza Katılmak İster misiniz?
            </h1>
         </div>
      </div>
      <footer class="bottem-wthree-footer">
      </footer>
   </body>
</html>