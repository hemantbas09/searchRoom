<%-- 
    Document   : dashBoard
    Created on : Aug 28, 2022, 12:30:58 AM
    Author     : hemant61
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
        <title>JSP Page</title>
         <%@include file="../common/cdn.jsp" %>
        <link rel="stylesheet" href="css/common.css">
    </head>
    <body>
        
        <%@include file="../common/header.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <!--                <div class="col-sm-3 sidebar-col">
                <%--<%@include file="common/sidebar.jsp" %>--%>
            </div>-->
                <div class="col-sm-9 main-col">
                    <h3>User List</h3>
                    <div style="color: green">

                    </div>
                    <table class="table table-bordered">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Contact</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>View Profile</th>
                            <th>Delete</th>
                        </tr>

                        <tr>
                            <td>i</td>
                            <td>r</td>
                            <td>p</td>
                            <td>r</td>
                            <td>t</td>
                            <td><a href=""><span class="glyphicon glyphicon-eye-open"></span></a></td>
                            <td><a href=""><span class="glyphicon glyphicon-trash"></span></a></td>
                        </tr>


                    </table>
                    <br><br><br><br>
                </div>
            </div>
        </div>
             <%@include file="../common/footer.jsp" %>
    </body>
</html>
