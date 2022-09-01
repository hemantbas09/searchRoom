
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>

        <%@include file="common/cdn.jsp" %>

    </head>
    <body>
       
        <%@include file="common/header.jsp" %>
        <section class="home">

            <div class="content">
                <h3>Find Perfect Home to live with your family</h3>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Mollitia repellat aperiam libero, beatae debitis iusto quia sit aliquid placeat facilis?</p>
                <a href="" class="btn">Find Property</a>
            </div>

            <div class="image">
                <img src="${pageContext.request.contextPath}/Static/Image/home.svg" alt="">
            </div>

        </section>

        <h3 class="indexProperty" ><strong>All Property</strong></h3>
        <section class="course">
            <%@include file="common/card.jsp" %> 
            <%@include file="common/card.jsp" %> 
            <%@include file="common/card.jsp" %> 
            <%@include file="common/card.jsp" %> 
            <%@include file="common/card.jsp" %> 
            <%@include file="common/card.jsp" %> <%@include file="common/card.jsp" %> <%@include file="common/card.jsp" %> 

        </section>


        <section class="footer">
            <div class="img1">
                <img src="Static/Image/homebanner.jpg" alt=""/>
            </div>
        </section> 

        <%@include file="common/footer.jsp" %>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    </body>
</html>