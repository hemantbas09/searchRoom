<%-- 
    Document   : propertyDetails
    Created on : Sep 9, 2022, 3:17:54 PM
    Author     : hemant61
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details</title>
        <%@include file="../common/cdn.jsp" %>
        <link href="../Static/css/style.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <%@include file="header.jsp" %>



        <div class="container p-5  m-auto mt-5 mb-5"  >
            <div class="row mx-5" style=" display: flex; justify-content: center">
                
                <div class="col-sm-10">
                    <img "
                        
                         src="${listProperty.propotyImage}"
                         class="w-100 shadow-1-strong rounded mb-4"
                         alt="Boat on Calm Water"
                         />
                </div>

                <hr>

                <div class="row p-4">
                    <div class="col-sm">
                        <h2> <strong>Owner Name:</strong></h2>
                        <h3>${listProperty.username}</h3>
                    </div>
                    <div class="col-sm">
                        <h2> <strong>Property Name:</strong></h2>


                        <h3>${listProperty.name}</h3>
                    </div>
                    <div class="col-sm">
                        <h2><strong>Contact:</strong></h2>

                        <h3>${listProperty.contact}</h3>
                    </div>
                    <hr>
                    <div class="row p-4">
                        <div class="col-sm">
                            <h2><strong>Location:</strong></h2>
                            <br>
                            <h3>${listProperty.propotyLocation}</h3>
                        </div>
                        <div class="col-sm">
                            <h2><strong> Property Type:</strong></h2>

                            <h3> ${listProperty.propotyType}</h3>
                        </div>
                        <div class="col-sm">
                            <h2><strong>Price:</strong></h2><h2>

                                <h3>Rs.${listProperty.propotyPrice}/Month</h3>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row p-4">
                    <div class="col-sm-10">
                        <h2><strong>Other Property Information:</strong></h2>
                        <h3>${listProperty.otherInformation}</h3>

                    </div>

                </div>

            </div>

        </div>
        <%@include file="../common/footer.jsp" %>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>

    </body>
</html>
