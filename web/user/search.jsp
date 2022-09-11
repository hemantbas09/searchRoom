

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Home Page</title>
        <%@include file="../common/cdn.jsp" %>
        <link href="../Static/css/style.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>

        <%@include file="header.jsp" %>

        <form method="post" action="<%= request.getContextPath()%>/searchServalet">
            <div class="row">
                <div class="col-sm-4">
                    <label style="font-size: 2rem" for="ptype">Type:</label><br>
                    <select style="font-size: 2rem" name="ptype" id="ptype" class="ptype" style="
                            padding: 10px 150px;border: 0.5px solid #404040;border-radius: 15px;" required="">
                        <option value=" ">---- Select ----</option>
                        <option value="Room">Room</option>
                        <option value="Flat">Flat</option>
                        <option value="Office">Office</option>
                        <option value="Other">Other</option>

                    </select>
                </div>

                <div class="col-sm-4">
                    <label style="font-size: 2rem" for="contact">Price :</label><br>
                    <input style="font-size: 2rem" class=" border border-dark" type="text" id="contact" name="price" placeholder="Enter Your Contact Number" required=""><br><br>
                </div>

                <div class="col-sm-4">
                    <label style="font-size: 2rem" for="contact">Location:</label><br>
                    <input style="font-size: 2rem" class=" border border-dark" type="text" id="contact" name="location" placeholder="Enter Your Contact Number" required=""><br><br>
                </div>

                <div class="col-sm-6">
                    <input class="btn btn-success" style="margin-left: 150px; margin-top: 4rem; width: 200px; padding: 12px;" type="submit" value="Submit">
                </div>
            </div>
        </form>


            <h1>${type}</h1>
            <h1>${price}</h1> 
            <h1>${location}</h1>


        
                
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    </body>
</html>
