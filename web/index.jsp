<%-- 
    Document   : index
    Created on : Aug 29, 2022, 12:29:20 AM
    Author     : Prab1n
--%>

<%
    if(session.getAttribute("name")==null){
        response.sendRedirect("login.jsp");
    }
%>
  


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Art Gallery</title>
        <link rel ="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <section id="header">
            <a href="#"><img src="img/logo.png" class="logo" alt=""> </a>
            <div>
                <ul id="navbar">
                    <li><a class="active" href="index.jsp">Home</a></li>
                    <li><a href="">Shop</a></li>
                    <li><a href="">About</a></li>
                    <li><a href="">Contact</a></li>
                    <li><a href="login.jsp">Register</a></li>
                    <li><a href="logout"><%=session.getAttribute("name")%></a></li>
                    <li><a href=""><i class="fa fa-shopping-cart"></i></a></li>
                </ul>
            </div>
            
            <!--
            <div id="mobile">
                <i id="bar" class="fas fa-outdent"></i>
            </div>-->
        </section>

        <section id="hero">
            <!--<img src="img/img1.jpg" id="hp" alt=""> -->
            <h2>Creative<br> and Best Arts</h2
            <p>“Art for all, buy art relax your life”</p>    
            <button class="button-50" role="button">Shop Now</button>  


        </section>

        <section id="feature" class="section-p1"> 
            <div class="feature-box">
                <img src="img/features/f1.png" alt="">
                <h6>Free Shipping</h6>
            </div>

            <div class="feature-box">
                <img src="img/features/f2.png" alt="">
                <h6>Online Order</h6>
            </div>

            <div class="feature-box">
                <img src="img/features/f3.png" alt="">
                <h6>Save Money</h6>
            </div>

            <div class="feature-box">
                <img src="img/features/f4.png" alt="">
                <h6>Promotions</h6>
            </div>

            <div class="feature-box">
                <img src="img/features/f5.png" alt="">
                <h6>Happy Sell and Buy</h6>
            </div>

            <div class="feature-box">
                <img src="img/features/f6.png" alt="">
                <h6>support</h6>
            </div>
        </section>

        <section id="product1" class="section-p1">
            <h2>Trending Arts</h2>
            <p></p>
            <div class="pro-container">
                <div class="pro">
                    <img src="img/arts/starrynight.jpg" alt="">
                    <div class="des">
                        <span>Van gogh</span>
                        <h5>The Starry Night</h5>
                        <h4>$272</h4>
                    </div>
                    <a href="#"><i class="fa fa-cart-plus cart"></i></a>

                </div>

                <div class="pro">
                    <img src="img/arts/starrynight.jpg" alt="">
                    <div class="des">
                        <span>Van gogh</span>
                        <h5>The Starry Night</h5>
                        <h4>$272</h4>
                    </div>
                    <a href="#"><i class="fa fa-cart-plus cart"></i></a>

                </div>

                <div class="pro">
                    <img src="img/arts/starrynight.jpg" alt="">
                    <div class="des">
                        <span>Van gogh</span>
                        <h5>The Starry Night</h5>
                        <h4>$272</h4>
                    </div>
                    <a href="#"><i class="fa fa-cart-plus cart"></i></a>

                </div>

                <div class="pro">
                    <img src="img/arts/starrynight.jpg" alt="">
                    <div class="des">
                        <span>Van gogh</span>
                        <h5>The Starry Night</h5>
                        <h4>$272</h4>
                    </div>
                    <a href="#"><i class="fa fa-cart-plus cart"></i></a>

                </div>

                <div class="pro">
                    <img src="img/arts/starrynight.jpg" alt="">
                    <div class="des">
                        <span>Van gogh</span>
                        <h5>The Starry Night</h5>
                        <h4>$272</h4>
                    </div>
                    <a href="#"><i class="fa fa-cart-plus cart"></i></a>

                </div>
            </div>
        </section>  

        <section id="banner" class="section-p1">
            <h4>Buy an Art</h4>
            <h2>Want to decorate your room with awesome Arts</h2>
            <button class="normal">Explore More</button>
        </section>
        
        <section id="product1" class="section-p1">
            <h2>Trending Arts</h2>
            <p></p>
            <div class="pro-container">
                <div class="pro">
                    <img src="img/arts/starrynight.jpg" alt="">
                    <div class="des">
                        <span>Van gogh</span>
                        <h5>The Starry Night</h5>
                        <h4>$272</h4>
                    </div>
                    <a href="#"><i class="fa fa-cart-plus cart"></i></a>

                </div>

                <div class="pro">
                    <img src="img/arts/starrynight.jpg" alt="">
                    <div class="des">
                        <span>Van gogh</span>
                        <h5>The Starry Night</h5>
                        <h4>$272</h4>
                    </div>
                    <a href="#"><i class="fa fa-cart-plus cart"></i></a>

                </div>

                <div class="pro">
                    <img src="img/arts/starrynight.jpg" alt="">
                    <div class="des">
                        <span>Van gogh</span>
                        <h5>The Starry Night</h5>
                        <h4>$272</h4>
                    </div>
                    <a href="#"><i class="fa fa-cart-plus cart"></i></a>

                </div>

                <div class="pro">
                    <img src="img/arts/starrynight.jpg" alt="">
                    <div class="des">
                        <span>Van gogh</span>
                        <h5>The Starry Night</h5>
                        <h4>$272</h4>
                    </div>
                    <a href="#"><i class="fa fa-cart-plus cart"></i></a>

                </div>

                <div class="pro">
                    <img src="img/arts/starrynight.jpg" alt="">
                    <div class="des">
                        <span>Van gogh</span>
                        <h5>The Starry Night</h5>
                        <h4>$272</h4>
                    </div>
                    <a href="#"><i class="fa fa-cart-plus cart"></i></a>

                </div>
            </div>
        </section> 

        <section id="newsletter" class="section-p1">
            <div class="newstext">
                <h4>Sign up for Newsletters</h4>
                <p>Get E-mail on <span>latest updates & special offers
                    </span>in contemporary art & design!</p>
            </div>

            <div class="form">
                <input text="text" placeholder="Your Email address">
                <button class="normal">Sign Up</button>
            </div>
        </section>

        <footer class="section-p1">
            <div class="col">
                <img class="logo" src="img/logo.png" alt="">
                <h4>Contact</h4>
                <p><strong>Address:</strong> Gongabu, Kathmandu, Nepal</p>
                <p><strong>Phone:</strong>+01 22773663/ +977 9805163247 </p>
                <p><strong>Hours:</strong> 10:00 -18:00, Sun-Fri</p>

                <div class="follow">
                    <h4>Follow Us</h4>
                    <div class="icon">
                        <i class="fa fa-facebook-square"></i>
                        <i class="fa fa-google"></i
                        <i class="fa fa-twitter"></i>
                        <i class="fa fa-instagram"></i>
                        <i class="fa fa-pinterest-square"></i
                        <i class="fa fa-youtube"></i>

                    </div>
                </div>
            </div>

            <div class="col">
                <h4>About</h4>
                <a href="">About us</a>
                <a href="">Delivery Information</a>
                <a href="">privacy Policy</a> 
                <a href="">Terms & Conditions</a>
                <a href="">Contact us</a>

            </div>

            <div class="col">
                <h4>My Account</h4>
                <a href="">Sign In</a>
                <a href="">View cart</a>
                <a href="">My Wishlist</a> 
                <a href="">Track My Order</a>
                <a href="">Help</a>

            </div>

            <div class="col payment">
                <h4> Secured Payment Gateways</h4> 
                <i class="fa fa-cc-mastercard"></i>
                <i class="fa fa-cc-visa"></i
                <i class="fa fa-cc-jcb"></i>
         
            </div>
            
            <div class="copyright">
                <p> Copyright ©2022 Online Art Gallery.
            </div>
        </footer>
s


        <script src="js/script.js"></script>

    </body>
</html>
