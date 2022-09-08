<%-- 
    Document   : index
    Created on : Sep 5, 2022, 5:06:42 PM
    Author     : hemant61
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>

        <%@include file="../common/cdn.jsp" %>

    </head>
    <body>
        <%
            String username = (String) session.getAttribute("currentUser");
                        String password = (String) session.getAttribute("currentPassword");
                        String role = (String) session.getAttribute("role");
            if (username == null) {
                response.sendRedirect("/roomRent/index.jsp");
            } 
        %>
        <%@include file="header.jsp" %>
        <section class="home">

            <div class="content">
                <h3>Give Your Room In Rent To The Best Tenent</h3>
                <p>Add Room in this platform and find <br> the tenet in the short time peroid.</p>
                <a href="" class="btn">Find Property</a>
            </div>

            <div class="image">
                <img src="${pageContext.request.contextPath}/Static/Image/home.svg" alt="">
            </div>
        </section>
        

        <section class="footer">
            <div class="img1">
                <img src="../Static/Image/adminBanner.jpg" alt=""/>
                
            </div>
        </section> 

        <%@include file="../common/footer.jsp" %>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    </body>
</html>