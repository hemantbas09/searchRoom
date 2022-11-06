<%-- 
    Document   : profile
    Created on : Sep 10, 2022, 2:45:25 PM
    Author     : hemant61
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            String username = (String) session.getAttribute("currentUser");%>
    
        
        <form style="margin: 3.5rem" action="<%= request.getContextPath()%>/insertProfile" method="post">
                        <div class="row">

                            <div class="col-sm-4 ">
                                <label for="name">Name:</label><br>
                                <input  class=" border border-dark" type="text" id="propertyname" name="name" placeholder="Enter Your Property Name" required=""><br>
                            </div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <div class="col-sm-2">
                                <label for="contact">Contact Number:</label><br>
                                <input class=" border border-dark" type="text" id="contact" name="contact" placeholder="Enter Your Contact Number" required=""><br><br>
                            </div>
                            <div class="col-sm-2">
                                <label for="contact">Email:</label><br>
                                <input class=" border border-dark" type="text" id="contact" name="email" placeholder="Enter Your Contact Number" required=""><br><br>
                            </div>
                            <div class="col-sm-2">
                                <label for="contact">Address:</label><br>
                                <input class=" border border-dark" type="text" id="contact" name="address" placeholder="Enter Your Contact Number" required=""><br><br>
                            </div>
                            
              
                            <div class="col-sm-4">

                                <input class=" border border-dark"  id="currentUser" name="currentUser" value=""><br>
                            </div>


                            

                            <div class="col-sm-6">
                                <input class="btn btn-success" style="margin-left: 150px; margin-top: 4rem; width: 200px; padding: 12px;" type="submit" value="Submit">
                            </div>
                    </form>
    </body>
</html>
