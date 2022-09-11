
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>

        <%@include file="common/cdn.jsp" %>

    </head>
    <body>

      

        <%@include file="common/header.jsp" %>
        <section class="home">

            <div class="content">
                <h3>Find Perfect Home to live with your family</h3>
                <p>Whether you’re looking for  property for rent, <span style="color: red">RoomFinder</span> We will help you find your dream house in just a few seconds.

                    We offer our clients a wealth of knowledge regarding all aspects of property Rent. Whether it is helping you search for your dream home.We would love the opportunity to help.</p>
                <a href="<%= request.getContextPath()%>/tenentProperty" class="btn">Find Property</a>
            </div>

            <div class="image">
                <img src="${pageContext.request.contextPath}/Static/Image/home2.svg" alt="">
            </div>

        </section>
            
            
            <section class="course">
            <c:forEach   var="property" items="${listProperty}">
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
                        <a href="${pageContext.request.contextPath}/authentication/authentication.jsp" class="btn ">More Details</a>
                    </div>
                    <div class="icons">
                        
                        <p><i class="fa-solid fa-circle-user"></i> ${property.username}</p>
                        
                        <p><i class="far fa-clock"></i> ${property.date}</p>

                    </div>
                </div>

            </c:forEach>
            
        </section>



        <section class="footer">
            <div class="img1">
                <img src="Static/Image/homebanner.jpg" alt=""/>
            </div>
        </section> 

        <%@include file="common/footer.jsp" %>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    </body>
</html>