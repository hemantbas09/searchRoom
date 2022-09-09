<%-- 
    Document   : aboutus
    Created on : Sep 9, 2022, 1:48:14 PM
    Author     : hemant61
--%>

<%-- 
    Document   : aboutus
    Created on : Aug 27, 2022, 11:41:21 PM
    Author     : hemant61
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>

        <%@include file="../common/cdn.jsp" %>
        <link href="../Static/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        
        <%@include file="header.jsp" %>

        <section id="about" class="section-padding about-section">
            <div  class="container">
                <div  class="row">
                    <div style="margin: 2rem;" class="col-sm-6">
                        <div class="section_title">
                            <h2><strong>About Us</strong></h2>
                        </div>
                        <div >

                            <p style="margin-top: 4rem; font-size: 2.5rem;">
                             <span style="color:red"> RoomFinder</span> is a platform where you can find the Rental Property According to your need and startup founded with the hope of serving the home seeker,dreamers.
                                <span style="color:red"> RoomFinder</span> being a comprehensive competing national site, is a digital platform having a wide spectrum of visual                               community catering unparalleled services with conceivable property listings and their details. With the knowledge                              of real estate setting.<span style="color:red"> RoomFinder</span> aims to continuously explore new ideas and technology to make property search                                easier and faster; as well as bringing home owners and home professionals together.

                                <span style="color:red"> RoomFinder</span> serves innovative ideas and targets to be a leading full-service real estate company with the aim Finding properties as cost effective as possible while maintaining the highest level of impeccable quality service. By enhancing the quality of life through active community involvement, <span style="color:red"> RoomFinder</span> aspires to grow every single day.
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-1" >
                        <img style="width: 64rem; height:64rem" src="../Static/Image/about.svg" alt=""/>
                    </div>
                </div>
            </div>

        </section>

        <%@include file="../common/footer.jsp" %>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    </body>

</html>

