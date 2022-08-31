<%-- 
    Document   : registration
    Created on : Aug 31, 2022, 1:05:33 AM
    Author     : Prab1n
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Here</title>
        <link rel ="stylesheet" href="css/styleLogin.css">
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    </head>
    <body>
        <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
      
        <div class="main">

            <!-- Sign up form -->
            <section class="signup">
                <div class="container">
                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 class="form-title">Sign up</h2>

                            <form method="post" action="register" class="register-form"
                                  id="register-form">
                                <div class="form-group">
                                    <label for="name"><i
                                            class="zmdi zmdi-account material-icons-name"></i></label> <input
                                        type="text" name="name" id="name" placeholder="Your Name" />
                                </div>
                                <div class="form-group">
                                    <label for="email"><i class="zmdi zmdi-email"></i></label> <input
                                        type="email" name="email" id="email" placeholder="Your Email" />
                                </div>
                                <div class="form-group">
                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
                                        type="password" name="pass" id="pass" placeholder="Password" />
                                </div>
                                <div class="form-group">
                                    <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                    <input type="password" name="re_pass" id="re_pass"
                                           placeholder="Repeat your password"  />
                                </div>
                                <div class="form-group">
                                    <label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
                                    <input type="text" name="contact" id="contact"
                                           placeholder="Contact no" />
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="agree-term" id="agree-term"
                                           class="agree-term" /> <label for="agree-term"
                                           class="label-agree-term"><span><span></span></span>I
                                        agree all statements in <a href="#" class="term-service">Terms
                                            of service</a></label>
                                </div>
                                <div class="form-group form-button">
                                    <input type="submit" name="signup" id="signup"
                                           class="form-submit" value="Register" />
                                </div>
                            </form>
                        </div>
                        <div class="signup-image">
                            <figure>
                                <img src="img/signin.jpg" alt="sing up image">
                            </figure>
                            <a href="login.jsp" class="signup-image-link">I am already
                                member</a>
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
            if(status == "success"){
                swal("Congrats", "Account Created sucessfully", "success");
            }
            
            if(status == "invalidName"){
                swal("Sorry", "Please Enter Name", "failed");
            }
            if(status == "invalidEmail"){
                swal("Sorry", "Please Enter email", "failed");
            }
            if(status == "invalidUpwd"){
                swal("Sorry", "Please Enter Password", "failed");
            }
            if(status == "invalidConfirmPassword"){
                swal("Sorry", "Password don't match", "failed");
            }
            if(status == "invalidPhone"){
                swal("Sorry", "Please enter phoe number", "failed");
            }
            if(status == "invalidPhoneLength"){
                swal("Sorry", "Phone numbers should not exceed 10 digits", "failed");
            }
             
            
        </script>


    </body>
</html>
