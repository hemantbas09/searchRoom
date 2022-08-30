
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>House</title>
        <%@include file="../common/cdn.jsp" %>
        <link rel="stylesheet" href="css/common.css">
    </head>
    <body>
         <%@include file="../common/header.jsp" %>
        <div class="container-fluid">
            <section class="property-section">
                <h1 style="text-align: center">About Property</h1>
                <div class="row">
                    
                    
                   <%@include file="../common/card.jsp" %>
                   <div>This is About Us Page</div>
                </div>
            </section>
        </div>
                <%@include file="../common/footer.jsp" %>
    </body>
</html>
