<%-- 
    Document   : propertyDetails
    Created on : Sep 9, 2022, 3:17:54 PM
    Author     : hemant61
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="../common/cdn.jsp" %>
        <link href="../Static/css/style.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <%@include file="header.jsp" %>

  
            <h1> ${listProperty}</h1>
        
       
       

    </c:forEach>

    <!-- Gallery -->
    <div class="row">
        <div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
            <img
                src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/Nature/4-col/img%20(73).webp"
                class="w-100 shadow-1-strong rounded mb-4"
                alt="Boat on Calm Water"
                />

            <img
                src="https://mdbcdn.b-cdn.net/img/Photos/Vertical/mountain1.webp"
                class="w-100 shadow-1-strong rounded mb-4"
                alt="Wintry Mountain Landscape"
                />


        </div>

        <div class="col-lg-4 mb-4 mb-lg-0">
            <img
                src="https://mdbcdn.b-cdn.net/img/Photos/Vertical/mountain2.webp"
                class="w-100 shadow-1-strong rounded mb-4"
                alt="Mountains in the Clouds"
                />

            <img
                src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/Nature/4-col/img%20(73).webp"
                class="w-100 shadow-1-strong rounded mb-4"
                alt="Boat on Calm Water"
                />
        </div>

        <div class="col-lg-4 mb-4 mb-lg-0">


            <div>
                <h2> <strong>Owner Name:</strong></h2>
                <br>
                <h3>${property.username}</h3>
            </div>
            <br><br><br>
            <div>
                <h2> <strong>Property Name:</strong></h2>
                <br>
                <h3>${property.name}</h3>
            </div>
            <br><br><br>
            <div><h2><strong>Contact:</strong></h2>
                <br>
                <h3>${property.Contact}</h3>
            </div>
            <br><br><br>
            <div><h2><strong>Location:</strong></h2>
                <br>
                <h3>${property.propotyLocation}</h3>
            </div>
            <br><br><br>
            <div><h2><strong> Property Type:</strong></h2>
                <br>
                <h3> ${property.propotyType}</h3>
            </div>
            <br><br><br>
            <div><h2><strong>Price:</strong></h2>
                <br>
                <h3>Rs.${property.propotyPrice}/Month</h3>

            </div>
            <br><br><br>
            <div><h2><strong>Other Property Information:</strong></h2>
                <br>
                <p style="font-size: 2rem"></p>

            </div>

        </div>

    </div>

    <%@include file="../common/footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>

</body>
</html>
