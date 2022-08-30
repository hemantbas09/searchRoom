<%-- 
    Document   : room
    Created on : Aug 28, 2022, 2:55:50 PM
    Author     : hemant61
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Room</title>
        <%@include file="../common/cdn.jsp" %>
      <link href="../Static/css/style.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <%@include file="../common/header.jsp" %>
        <div class="container-fluid">
            <section class="property-section">
                <h1 style="text-align: center">Room</h1>
                <div class="row">
                    <section class="course">
                        <%@include file="../common/card.jsp" %>
                    </section>
                    ROW

                </div>
            </section>
        </div>
        <%@include file="../common/footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    </body>
</html>

