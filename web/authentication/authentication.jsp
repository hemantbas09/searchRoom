<%-- 
    Document   : authentication
    Created on : Aug 30, 2022, 11:26:22 AM
    Author     : hemant61
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link href="../Static/css/authStyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <input type="checkbox" id="flip">
            <div class="cover">
                <div class="front">
                    <img src="Static/image/a.jpg" alt="">
                    <div class="text">
                        <span class="text-1">Every new friend is a <br> new adventure</span>
                        <span class="text-2">Let's get connected</span>
                    </div>
                </div>
                <div class="back">
                    <img class="backImg" src="Static/image/b.jpg" alt="">
                    <div class="text">
                        <span class="text-1">Complete miles of journey <br> with one step</span>
                        <span class="text-2">Let's get started</span>
                    </div>
                </div>
            </div>
            <div class="forms">
                <div class="form-content">
                    <div class="login-form">
                        <div class="title">Login</div>
                        <form action="#">
                            <div class="input-boxes">
                                <div class="input-box">
                                    <i class="fas fa-envelope"></i>
                                    <input type="text" placeholder="Enter your email" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-lock"></i>
                                    <input type="password" placeholder="Enter your password" required>
                                </div>
                                <div class="text"><a href="#">Forgot password?</a></div>
                                <div class="button input-box">
                                    <input type="submit" value="Sumbit">
                                </div>
                                <div class="text sign-up-text">Don't have an account? <label for="flip">Sigup now</label></div>
                            </div>
                        </form>
                    </div>
                    <div class="signup-form">

                        <div class="title">Signup</div>
                        <form id="signup" action="<%= request.getContextPath()%>/registerServalet" method="post">
                            <div class="input-boxes">
                                <div class="input-box">
                                    <i class="fas fa-user"></i>
                                    <input name="username" type="text" placeholder="Enter your username" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-user"></i>
                                    <input name="name" type="text" placeholder="Enter your name" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-envelope"></i>
                                    <input name="email" type="text" placeholder="Enter your email" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-lock"></i>
                                    <input name="password"  type="password" placeholder="Enter your password" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-lock"></i>
                                    <input name="confirmPassword" type="password" placeholder="Again Enter Your Password" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-lock"></i>
                                    <input name="role" class="" type="text" placeholder="Select your Role:" required>
                                </div>
                                <div class="button input-box">
                                    <input id="submit-btn" type="submit" value="Sumbit">
                                </div>
                                <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
 <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script>
            $(document).ready(function () {
                console.log("loaded........");

                $('#signup').on('submit', function (event) {
                    event.preventDefault();
                    let form = new FormData(this);
                    $("#sumbimt-btn").hide();
                    $("#loader").show();
//send register servlet:
                    $.ajax({
                        url: "<%= request.getContextPath()%>/registerServalet",
                        type: 'post',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            $("#sumbimt-btn").show();
                            $("#loader").hide();
                            if (data.trim() === 'done')
                            {
                                swal("Successfully Signup redisrec to the home page")
                                        .then((value) => {
                                            window.location = "${pageContext.request.contextPath}/index.jsp";
                                        });
                            
                        }else{
                            swal(data);
                        }
                    },
                        error: function (jqXHR, textStatus, errorThrown) {
                           console.log(jqXHR);
                             $("#sumbimt-btn").show();
                            $("#loader").hide();
                            swal("something went wrong..try again");
                           
                            
                        },
                        processData: false,
                        contentType: false
                    });
                });
            });



        </script>


    </body>
</html>