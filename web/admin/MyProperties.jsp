
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

                    <table class="table table-bordered">
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
                        <c:forEach var="property" items="${listProperty}">
                            <h1>The id is:<c:out  value="${property.id}"><h1>
                            <tr>
                                <th><c:out  value="${property.id}"></th>

                                <td><c:out  value="${property.propHeading}"></td>
                                    <td><c:out  value="${property.propType}"></td>

                                        <td><c:out  value="${property.propPrice}"></td>
                                            <td><c:out  value="${property.propLocation}"></td>
                                                <th><c:out  value="${property.Contact}"></th>


                                                    <th>
                                                    <c:out  value="${property.id}">

                                                        <a type="button" class="btn btn-success" href="<%= request.getContextPath()%>/edit?id=<c:out  value=' ${property.id}'/>">Edit</a>
                                                        <a type="button" class="btn btn-success" href="<%= request.getContextPath()%>/delete?id= <c:out  value=' ${property.id}'/>">Delete</a>


                                                        </th>
                                                        </tr>
                                                        </tbody>

                                                        </table>


                                                        <div>This is About Us Page</div>
                                                        </div>
                                                        </section>
                                                        </div>
                                                        <%@include file="../common/footer.jsp" %>
                                                        </body>
                                                        </html>
