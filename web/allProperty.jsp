<%-- 
    Document   : allProperty
    Created on : Sep 3, 2022, 9:20:48 AM
    Author     : hemant61
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Property</title>

        <%@include file="common/cdn.jsp" %>

    </head>
    <body>
       
        <%@include file="common/header.jsp" %>


        <h3 class="indexProperty" ><strong>All Property</strong></h3>
        <section class="course">
            <%@include file="common/card.jsp" %> 
            <%@include file="common/card.jsp" %> 
            <%@include file="common/card.jsp" %> 
            <%@include file="common/card.jsp" %> 
            <%@include file="common/card.jsp" %> 
            <%@include file="common/card.jsp" %> <%@include file="common/card.jsp" %> <%@include file="common/card.jsp" %> 

        </section>

 

        <%@include file="common/footer.jsp" %>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    </body>
</html>
