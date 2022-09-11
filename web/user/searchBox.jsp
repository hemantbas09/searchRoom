<%-- 
    Document   : searchBox
    Created on : Sep 11, 2022, 5:16:47 PM
    Author     : hemant61
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <!--&& property.propotyPrice < price && property.propotyLocation == location-->

            <c:forEach var="property" items="${listProperty}">
                
                <c:if test="${ property.propotyType == type  }">
                <h1> ${property.propotyType} </h1>
                <h1> ${property.propotyPrice}   </h1>
                <h1> ${property.propotyLocation}   </h1>

            <section class="course">
                <div class="box">
                    <span class="amount">Rs.${property.propotyPrice}/Month</span>
                    <img src="${pageContext.request.contextPath}/Static/Image/property1.jpg" alt="" />
                    <div class="stars">
                        <h3> ${property.name}</h3>
                        <h3 class="propertyType">${property.propotyType}</h3>
                        <h2><i style="color:orange;margin-right: 2.5rem;font-size: 25px;" class="fa-solid fa-location-dot"></i>${property.propotyLocation}</h2>
                    </div>

                    <div class="d-flex justify-content-between">

                        <a href= "${pageContext.request.contextPath}/authentication/authentication.jsp" class=" btn "  href="#">Message</a>
                        <a href="moreDetails?propertyId=<c:out value='${property.propetyId}'/>" class="btn ">More Details</a>
                    </div>
                    <div class="icons">


                        <p><i class="fa-solid fa-circle-user"></i> ${property.username}</p>
                        <p><i class="far fa-clock"></i> ${property.date}</p>
                    </div>
                </div>
            </section>
            </c:if>
        </c:forEach>

    </body>
</html>
