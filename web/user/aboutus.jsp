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

        <%@include file="../common/header.jsp" %>

        <section id="about" class="section-padding about-section">
            <div  class="container">
                <div  class="row">
                    <div style="margin: 2rem;" class="col-sm-6">
                        <div class="section_title">
                            <h2><strong>About Us</strong></h2>
                        </div>
                        <div >

                            <p style="margin-top: 4rem; font-size: 2.5rem;">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
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
