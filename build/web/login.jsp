<%-- 
    Document   : login
    Created on : Aug 31, 2022, 12:49:56 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Here</title>
        <link rel ="stylesheet" href="css/styleLogin.css">
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    </head>

    <body>
        <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
        
        <div class="main">

            <!-- Sing in  Form -->
            <section class="sign-in">
                <div class="container">
                    <div class="signin-content">
                        <div class="signin-image">
                            <figure>
                                <img src="img/welcome.jpg" alt="sing up image">
                            </figure>
                            <a href="registration.jsp" class="signup-image-link">Create an
                                account</a>
                        </div>

                        <div class="signin-form">
                            <h2 class="form-titsle">Sign In</h2>
                            <form method="post" action="login" class="register-form"
                                  id="login-form">
                                <div class="form-group">
                                    <label for="username"><i
                                            class="zmdi zmdi-account material-icons-name"></i></label> <input
                                        type="text" name="username" id="username"
                                        placeholder="Your Name" required="required" />
                                </div>
                                <div class="form-group">
                                    <label for="password"><i class="zmdi zmdi-lock"></i></label> <input
                                        type="password" name="password" id="password"
                                        placeholder="Password" required="required"/>
                                </div>
                                <div class="form-group">
                                    <a href="forgetPassword.jsp">Forgot Password?</a>
                                </div>
                                <div class="form-group form-button">
                                    <input type="submit" name="signin" id="signin"
                                           class="form-submit" value="Log in" />
                                </div>
                            </form>
                            
                            <!--
                            <div class="social-login">
                                <span class="social-label">Or login with</span>
                                <ul class="socials">
                                    <li><a href="#"><i
                                                class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                    <li><a href="#"><i
                                                class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                    <li><a href="#"><i
                                                class="display-flex-center zmdi zmdi-google"></i></a></li>
                                </ul>
                            </div>
                            -->
                        </div>
                    </div>
                </div>
            </section>

        </div>

        <!-- JS -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="js/main.js"></script>
        
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"> </script>
        <link rel="stylesheet"  href="alert/dist/sweetalert.css" > 
        
        <script type="text/javascript">
            var status = document.getElementById("status").value;
            if(status == "failed"){
                swal("Sorry", "Wrong username or password", "failed");
            }
            
            if(status == "invaldEmail"){
                swal("Sorry", "Please Enter Username", "failed");
            }
            
            if(status == "invalidUpwd"){
                swal("Sorry", "Please enter password", "failed");
            }
            
        </script>

    </body>
</html>
