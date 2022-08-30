<%-- 
    Document   : allProperties
    Created on : Aug 28, 2022, 2:34:07 PM
    Author     : hemant61
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>allProperties</title>
        <%@include file="../common/cdn.jsp" %>
        <link rel="stylesheet" href="css/common.css">
    </head>

    <body>
        <%@include file="../common/header.jsp" %>
        <div class="container-fluid">
            <section class="property-section">
                <h1 style="text-align: center">Room</h1>
                <div class="row">

                    <%@include file="../common/card.jsp" %>

                </div>
            </section>
        </div>
        <%@include file="../common/footer.jsp" %>
    </body>
</html>
