<%-- 
    Document   : card
    Created on : Aug 27, 2022, 10:05:02 PM
    Author     : hemant61
--%>




<div class="box">
    <span class="amount">Rs.4000/Month</span>
    <img src="${pageContext.request.contextPath}/Static/Image/property1.jpg" alt="" />
    <div class="stars">
        <h3>One Room</h3>
        <h3 class="propertyType">Flat</h3>
        <h2><i style="color:orange;margin-right: 2.5rem;font-size: 25px;" class="fa-solid fa-location-dot"></i>Kathmandu</h2>
    </div>

    <p>
        Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque
        ullam omnis odit accusamus doloremque? Cum aliquid unde nulla.
        Vitae, adipisci?
    </p>

    <div class="d-flex justify-content-between">
        <a href= "${pageContext.request.contextPath}/authentication/authentication.jsp" class=" btn "  href="#">Message</a>
        <a href="#" class="btn ">More Details</a>
    </div>
    <div class="icons">
        <p><i class="far fa-clock"></i> 2 days ago</p>
        <p> 3 <i class="fa-solid fa-bed"></i> Room</p>
        <p>1 <i class="fa-solid fa-bath"></i> Bathroom</p>
    </div>
</div>

