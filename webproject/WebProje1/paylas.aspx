<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paylas.aspx.cs" Inherits="WebProje1.paylas" %>

<!doctype html>
<html class="no-js" lang="tr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Ders HTML-5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">


            <link rel="stylesheet" href="assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="assets/css/flaticon.css">
            <link rel="stylesheet" href="assets/css/slicknav.css">
            <link rel="stylesheet" href="assets/css/animate.min.css">
            <link rel="stylesheet" href="assets/css/magnific-popup.css">
            <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="assets/css/themify-icons.css">
            <link rel="stylesheet" href="assets/css/slick.css">
            <link rel="stylesheet" href="assets/css/nice-select.css">
            <link rel="stylesheet" href="assets/css/style.css">
   </head>

   <body>

    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/logo.jpg" alt="">
                </div>
            </div>
        </div>
    </div>

    <header>
    
       <div class="header-area">
            <div class="main-header ">
                <div class="header-top top-bg d-none d-lg-block">
                   <div class="container">
                    <div class="row justify-content-between align-items-center">
                        <div class="col-lg-8">
                            <div class="header-info-left">
                                
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="header-info-right f-right">
                                <ul class="header-social">    
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                   <li> <a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                                </ul>
                            </div>
                        </div>
                       </div>
                   </div>
                </div>
               <div class="header-bottom  header-sticky">
                    <div class="container">
                        <div class="row align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-2 col-lg-2 col-md-1">
                                <div class="logo">
                                  <a href="Anasayfa.aspx"><img src="assets/img/logo/logo.jpg" alt=""></a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10 col-md-10">
                           
                                <div class="main-menu f-right d-none d-lg-block">
                                    <nav>               
                                        <ul id="navigation">                                                                                                                                     
                                            <li><a href="Anasayfa.aspx">Ana Sayfa</a></li>
                                            <li><a href="Denemesınav.aspx">Deneme Sınavları</a></li>
                                            <li><a href="Cikmissoru.aspx">Çıkmış Sorular</a></li>
                                            <li><a href="istatistikler.aspx">İstatistiklerim</a>
                                             
                                            <li><a href="paylas.aspx">Paylaşım Yap</a>
                                            </li>
                                            </li>
                                            <li><a href="Bizeulasın">Bize Ulaşın</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                         
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
               </div>
            </div>
       </div>
  
    </header>
       
    <main>

  
        <div class="slider-area ">
         
            <div class="slider-active">
               <div class="single-slider slider-height2 d-flex align-items-center" data-background="assets/img/hero/spacep.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                                <div class="hero_caption">
                                    <h1 style="font-family: 'Arial Black'">Paylaşım <span>Yap</span> </h1>
                                   
                                </div>
                            </div>
                   
                        </div>
                  
                               
                            </div>
                        </div>
                    </div>
                </div>
       
        

    </main>
    <main>

        <div class="favourite-place place-padding">
            <div class="container">
               
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle text-center">
                            <h2>Çözülemeyen Sorular</h2>
                        </div>
                    </div>
                </div>
                <form runat="server">
                <div class="row">
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT * FROM [PaylasimVeritabanı] inner join KategoriVeritabanı on KategoriVeritabanı.id=PaylasimVeritabanı.KategoriID">   </asp:SqlDataSource>
                    
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                             

                            <article class="blog_item">
                            <div class="blog_item_img">
                                <img class="card-img rounded-0" src='resim/<%# Eval("resim") %>' alt="">
                              
                                <a href='<%# Eval("id","paylas.aspx?Id={0}") %>>' class="blog_item_date">
                                    <h3>15</h3>
                                    <p>Jan</p>
                                </a>
                            </div>

                            <div class="blog_details">
                                <a class="d-inline-block" href='<%# Eval("id","paylas.aspx?Id={0}") %>>'>
                                    <h2><%# Eval("isim") %></h2>
                                </a>
                                <ul class="blog-info-link">
                                    <li><a href="#"><i class="fa fa-user"></i><%# Eval("adi") %> </a></li>
                                
                                </ul>
                            </div>
                        </article>

                        </ItemTemplate>
                            </asp:DataList>
                 

                  
                   

                </div>
                    

                    </form>
            </div>
        </div>
    </main>
    <footer>
  
        <div class="footer-area footer-padding footer-bg" data-background="assets/img/service/footer_bg.jpg">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
                       <div class="single-footer-caption mb-50">
                         <div class="single-footer-caption mb-30">
                            
                             <div class="footer-tittle">
                                 <div class="footer-pera">
                                     <p>              Birileri bugün gölgede oturuyorsa, uzun zaman önce birileri ağaç ektiği içindir. </p>
                                     <p>-Warren Buffet- </p>
                                </div>
                             </div>
                         </div>
                       </div>
                    </div>
                </div>
               
                <div class="row pt-padding">
                 <div class="col-xl-7 col-lg-7 col-md-7">
                   
                 </div>
                  <div class="col-xl-5 col-lg-5 col-md-5">
                        
                        <div class="footer-social f-right">
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-behance"></i></a>
                            <a href="#"><i class="fas fa-globe"></i></a>
                        </div>
                 </div>
             </div>
            </div>
        </div>
        
    </footer>

	
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
		
		<!-- Jquery, Popper, Bootstrap -->
		<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>
		<!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
		<script src="./assets/js/animated.headline.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

		<!-- Scrollup, nice-select, sticky -->
        <script src="./assets/js/jquery.scrollUp.min.js"></script>
        <script src="./assets/js/jquery.nice-select.min.js"></script>
		<script src="./assets/js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>
        
       </form>
        
    </body>
</html>