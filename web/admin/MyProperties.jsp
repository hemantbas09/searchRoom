<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        
         <%
            String currentUsername = (String) session.getAttribute("currentUser");%>
            
         <%@include file="header.jsp" %>
        <div class="container-fluid">
            <section class="property-section">
                
                <h3 class="indexProperty" ><strong>My Property</strong></h3>
                <div class="row">

                    <table class="table table-bordered" style="font-size: 25px">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Property Name</th>
                                <th>Property Type</th>
                                <th>Property Price</th>
                                <th>Property Addrees</th>
                                <th>Contact</th>
                                <th>Actions</th>
                            </tr>
                        </thead>


                        <tbody>





                       


                            <c:forEach   var="property" items="${listProperty}">
                               
                           

                                <c:if test="${ property.username eq  currentUser }">
                             
                                <tr>
                                    
                                    <td>${property.propetyId}</td>
                                    <td>${property.name}</td>
                                    <td>${property.propotyType}</td>
                                    <td> ${property.propotyPrice}</td>
                                    <td> ${property.propotyLocation}</td>
                                    <td>  ${property.contact}</td>
                                    <td>

                                        <a type="button" class="btn btn-success" href="edit?propertyId=<c:out value='${property.propetyId}'/>">Edit</a>
                                           <a type="button" class="btn btn-success" href="delete?propertyId=<c:out value='${property.propetyId}'/>">Delete</a>


                                               </td>
                                               </tr>
                                </c:if>         
                                           </c:forEach>


                                               </tbody>
                                               </table>
                                               </div>
                                               </section>
                                               </div>
                                               <%@include file="../common/footer.jsp" %>
                                               </body>
                                               </html>
