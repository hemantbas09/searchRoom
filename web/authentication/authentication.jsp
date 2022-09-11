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
        <%@include file="../common/cdn.jsp" %> 
        <link href="../Static/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <%
	    Cookie[] cookies=request.getCookies();
	    String userName = "", password = "",rememberVal="";
	    if (cookies != null) {
	         for (Cookie cookie : cookies) {
	           if(cookie.getName().equals("cookuser")) {
	             userName = cookie.getValue();
	           }
	           if(cookie.getName().equals("cookpass")){
	             password = cookie.getValue();
	           }
	           if(cookie.getName().equals("cookrem")){
	             rememberVal = cookie.getValue();
	           }
	        }
	    }
	%>
        <%
            String username = (String) session.getAttribute("currentUser");
            String upassword = (String) session.getAttribute("currentPassword");
            String role = (String) session.getAttribute("role");
            if (username != null && role=="Tenant" ) {
                response.sendRedirect("/roomRent/admin/index.jsp");
                  
            } else if( username != null && role=="Owner"){
            response.sendRedirect("/roomRent/user/index.jsp");
            
            }
        %>
        <%@include file="../common/header.jsp" %>
        <div style="margin: 2rem;" class="container">
            <input type="checkbox" id="flip">
            <div class="cover">
                <div class="front">

                    <img src="../Static/Image/homebanner.jpg" alt="">
                    <div class="text">
                        <span class="text-1">Every new friend is a <br> new adventure</span>
                        <span class="text-2">Let's get connected</span>
                    </div>
                </div>
                <div class="back">
                    <img class="bhttp://localhost:8080/roomRent/authentication/authentication.jspackImg" src="../Static/Image/homebanner.jpg" alt="">
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
                        <form action="<%= request.getContextPath()%>/LoginServalet" method="Post">
                            <div class="input-boxes">
                                <div class="input-box">
                                    <i class="fa-solid fa-user"></i>
                                    <input name="loginusername" type="text" placeholder="Enter your Username" value="<%=userName%>" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-lock"></i>
                                    <input name="loginpassword" type="password" placeholder="Enter your password" value="<%=password%>" required>
                                </div>
                                
                                <div style="margin-left:-0.5rem;margin-right: 1rem; font-size:2rem" class="form-check mb-2 mr-sm-2">
                                    <input class="form-check-input" type="checkbox" id="inlineFormCheck" name="checkBox" value="0"
                                            >
                                    <label class="form-check-label" for="inlineFormCheck">
                                        <h3>Remember me</h3>
                                    </label>
                                </div>
                               

                                
                                <div class="text d-flex flex-row-reverse"><a href="${pageContext.request.contextPath}/authentication/forgotPassword.jsp">Forgot password?</a></div>
                                <div class="button input-box">
                                    <input type="submit" value="Log In">
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
                                    <input name="email" type="email" placeholder="Enter your email" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-lock"></i>
                                    <input name="password"  type="password" placeholder="Enter your password" required>
                                </div>
                                <div class="input-box">
                                    <i class="fas fa-lock"></i>
                                    <input name="confirmPassword" type="password" placeholder="Confirm Your Password" required>
                                </div>
                                
                                <div  style="font-size: 1.5rem;" >

                                    <select name="role" class="input-box" id="inputState">
                                       
                                        <option>Select Your Role</option>
                                        <option>Tenant</option>
                                        <option>Owner</option>
                                    </select>
                                </div>
                                <div class="button input-box">
                                    <input id="submit-btn" type="submit" value="Sign Up">
                                </div>
                                <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="../common/footer.jsp" %>
        
        
         <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
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
                    $("#submit-btn").hide();
                    $("#loader").show();
//send register servlet:
                    $.ajax({
                        url: "<%= request.getContextPath()%>/registerServalet",
                        type: 'post',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            if (data.trim() === 'done')
                            {
                                swal("Successfully Signup redirect to the home page")
                                        .then((value) => {
                                            window.location = "${pageContext.request.contextPath}/common/link.jsp";
                                        });

                            } else {
                                swal(data);
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                                                    
                            console.log(jqXHR);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            swal("Username is already Taken");


                        },
                        processData: false,
                        contentType: false
                    });
                });
            });



        </script>


    </body>
</html>
