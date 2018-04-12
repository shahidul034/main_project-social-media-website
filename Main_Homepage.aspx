<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main_Homepage.aspx.cs" Inherits="Main_Homepage" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>WE TALK</title>

    <!-- load CSS -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300">  <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="css/bootstrap.min.css">                                  <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="fontawesome/css/fontawesome-all.min.css">                <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" type="text/css" href="slick/slick.css"/>                       <!-- http://kenwheeler.github.io/slick/ -->
    <link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
    <link rel="stylesheet" href="css/tooplate-style.css">                               <!-- Templatemo style -->

    <script>document.documentElement.className = "js"; var supportsCssVars = function () { var e, t = document.createElement("style"); return t.innerHTML = "root: { --tmp-var: bold; }", document.head.appendChild(t), e = !!(window.CSS && window.CSS.supports && window.CSS.supports("font-weight", "var(--tmp-var)")), t.parentNode.removeChild(t), e }; supportsCssVars() || alert("Please view this in a modern browser such as latest version of Chrome or Microsoft Edge.");</script>
    
</head>

<body runat="server">
    <header>
		<div class="T">
			<h1><img src="icon.ico" style="height: 90px"> We Talk</h1>
		</div>
	</header>
    <div id="tm-bg"></div>
    <div id="tm-wrap">
        <div class="tm-main-content">
            <div class="container tm-site-header-container">
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-6 col-md-col-xl-6 mb-md-0 mb-sm-4 mb-4 tm-site-header-col">
                        <div class="tm-site-header">
                            <h1 class="mb-4">WE TALK</h1>
                            <img src="img/underline.png" class="img-fluid mb-4">
                            <p>We are connecting the world</p>        
                        </div>                        
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="content">
                            <div class="grid">
                                <div class="grid__item" id="home-link">
                                    <div class="product">
                                        <div class="tm-nav-link">
                                            <i class="fas fa-home fa-3x tm-nav-icon"></i>
                                            <span class="tm-nav-text">Welcome</span>
                                            <div class="product__bg"></div>        
                                        </div>                                    
                                        <div class="product__description">
                                            <div class="row mb-3">
                                                <div class="col-12">
                                                    <h2 class="tm-page-title">Welcome to WE TALK</h2>        
                                                </div>
                                            </div>                                        
                                            <div class="row">
                                                <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                                    <img src="img/welcome-1.jpg" class="img-fluid mb-3">
                                                    <p>Our website make a new world where you can do anything what you want.Thank you.</p>
                                                       
                                                </div>
                                                <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                                    <p>Social media is something of a double-edged sword. At its best, social media offers unprecedented opportunities for marginalized people to speak and bring much needed attention to the issues they face. At its worst, social media also offers 'everyone' an unprecedented opportunity to share in collective outrage without reflection. Roxane Gay</p>
                                                    <p>Roxane Gay</p>
                                                    <img src="img/welcome-2.jpg" class="img-fluid">
                                                </div>                                        
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>

                                <div class="grid__item" id="team-link">
                                    <div class="product">
                                        <div class="tm-nav-link">
                                            <i class="fas fa-users fa-3x tm-nav-icon"></i>
                                            <span class="tm-nav-text">Sign In</span>
                                            <div class="product__bg"></div>            
                                        </div>                                     
                                        <div class="product__description">
                                            <div class="p-sm-4 p-2">
                                                <div class="row mb-3">
                                                    <div class="col-12">
                                                        <h2 class="tm-page-title">Sign in! you can connect with new world!!!</h2>        
                                                    </div>
                                                </div>
                                                <div class="row tm-reverse-sm">
                                                    <div class="col-sm-12 col-md-8 col-lg-8 col-xl-8">
                                                        <asp:HyperLink ID="HyperLink1" runat="server" class="btn tm-btn-gray" NavigateUrl="~/Homepage.aspx">Sign in</asp:HyperLink>
                                                              
                                                    </div>                                                
                                                    <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4 mb-lg-0 mb-sm-4 mb-4">
                                                        <img src="img/team.jpg" class="img-fluid">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="grid__item">
                                    <div class="product">
                                        <div class="tm-nav-link">
                                            <i class="fas fa-handshake fa-3x tm-nav-icon"></i>
                                            <span class="tm-nav-text">Sign Up</span>
                                            <div class="product__bg"></div>             
                                        </div>                                                                 
                                        <div class="product__description">
                                            <div class="p-sm-4 p-2">
                                                <div class="row mb-3">
                                                    <div class="col-12">
                                                        <h2 class="tm-page-title">Sign Up</h2>        
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <div class="col-12">
                                                        <p>If you do not have any account,you will need to sign up here to connect new world.</p>
                                                         <asp:HyperLink ID="HyperLink2" runat="server" class="btn tm-btn-gray" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
                                                       
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="p-sm-4 p-2 tm-img-container">
                                                            <div class="tm-img-slider" id="tmImgSlider">
                                                              <img src="img/gallery-img-01-tn.jpg" alt="Image" class="tm-slider-img">
                                                              <img src="img/gallery-img-02-tn.jpg" alt="Image" class="tm-slider-img">
                                                              <img src="img/gallery-img-03-tn.jpg" alt="Image" class="tm-slider-img">
                                                              <img src="img/gallery-img-04-tn.jpg" alt="Image" class="tm-slider-img">
                                                              <img src="img/gallery-img-05-tn.jpg" alt="Image" class="tm-slider-img">
                                                              <img src="img/gallery-img-06-tn.jpg" alt="Image" class="tm-slider-img">
                                                            </div>
                                                        </div>  
                                                    </div>
                                                </div>
                                            </div>
                                        </div>       
                                    </div>
                                </div>

                                <div class="grid__item">
                                    <div class="product">
                                        <div class="tm-nav-link">
                                            <i class="fas fa-comments fa-3x tm-nav-icon"></i>
                                            <span class="tm-nav-text">Contact</span>
                                            <div class="product__bg"></div>             
                                        </div>                                                              
                                        <div class="product__description">
                                            <div class="pt-sm-4 pb-sm-4 pl-sm-5 pr-sm-5 pt-2 pb-2 pl-3 pr-3">
                                                <div class="row mb-3">
                                                    <div class="col-12">
                                                        <h2 class="tm-page-title">Contact Us</h2>        
                                                    </div>
                                                </div>
                                                <div class="row mb-4">
                                                    
                                                </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <form class="contact-form" runat="server">
                                                            <div class="row">
                                                                <div class="form-group col-md-6 col-lg-6 col-xl-6">
                                                                    <asp:TextBox ID="contact_name" runat="server" placeholder="Name" BackColor="White" ForeColor="Black"></asp:TextBox>
                                                
                                                                </div>
                                                                <div class="form-group col-md-6 col-lg-6 col-xl-6 tm-col-email">
                                                                  
                                                                    <asp:TextBox ID="contact_email" runat="server" placeholder="Email" BackColor="White" ForeColor="Black"></asp:TextBox>
                                             
                                                                </div>
                                                                
                                                            </div>                                                        
                                                            <div class="form-group">
                                                            
                                                                <asp:TextBox ID="contact_message" runat="server"  placeholder="Message" Height="149px" Width="652px" BackColor="White" ForeColor="Black"></asp:TextBox>
                                                            </div>
                                                            <asp:Button ID="submit" runat="server" Text="Submit"  class="btn btn-primary tm-btn-submit" OnClick="submit_Click"/>
                                                           
                                               
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>                                            
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>                       
                    </div>
                </div>                
            </div>
            <div> <asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
            <footer>
                <p class="small tm-copyright-text">Copyright &copy; <span class="tm-current-year">2018</span> Shakib</p>
            </footer>
        </div> <!-- .tm-main-content -->  
    </div>
    <!-- load JS -->
    <script src="js/jquery-3.2.1.slim.min.js"></script>         <!-- https://jquery.com/ -->    
    <script src="slick/slick.min.js"></script>                  <!-- http://kenwheeler.github.io/slick/ -->  
    <script src="js/anime.min.js"></script>                     <!-- http://animejs.com/ -->
    <script src="js/main.js"></script>  
    <script>

        function setupFooter() {
            var pageHeight = $('.tm-site-header-container').height() + $('footer').height() + 100;

            var main = $('.tm-main-content');

            if ($(window).height() < pageHeight) {
                main.addClass('tm-footer-relative');
            }
            else {
                main.removeClass('tm-footer-relative');
            }
        }

        /* DOM is ready
        ------------------------------------------------*/
        $(function () {

            setupFooter();

            $(window).resize(function () {
                setupFooter();
            });

            $('.tm-current-year').text(new Date().getFullYear());  // Update year in copyright           
        });

    </script>             

</body>
</html>


