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
        <%@include file="../common/header.jsp" %>
        <div class="container-fluid">
            <section class="property-section">
                <h1 style="text-align: center">About Property</h1>
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
                             


                                <tr>
                                    <td>${property.propetyId}</td>
                                    <td>${property.name}</td>
                                    <td>${property.propotyType}</td>
                                    <td> ${property.propotyPrice}</td>
                                    <td> ${property.propotyLocation}</td>
                                    <td>  ${property.contact}</td>
                                    <td><h1>This is the Information:</h1>${property.otherInformation}</td>
                                    <td><h1>This is the Information:</h1>${property.propotyImage}</td>
                                    <td>

                                        <a type="button" class="btn btn-success" href="edit?propertyId=<c:out value='${property.propetyId}'/>">Edit</a>
                                           <a type="button" class="btn btn-success" href="delete?propertyId=<c:out value='${property.propetyId}'/>">Delete</a>


                                               </td>
                                               </tr>
                                                     
                                           </c:forEach>


                                               </tbody>
                                               </table>
                                               </div>
                                               </section>
                                               </div>
                                               <%@include file="../common/footer.jsp" %>
                                               </body>
                                               </html>
