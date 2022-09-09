<nav class="navbar navbar-expand-lg bg-light header">
    <div class="container-fluid">

        <a class="navbar-brand logo" href="<%= request.getContextPath()%>/commonIndexServalet">
            <i class="fa-solid fa-house"></i>
            <span>Room</span>Finder
        </a>


        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="">
                    
                </li>
            </ul>
            <a  class="nav-link nav-item nav1 nav2" href="${pageContext.request.contextPath}/user/aboutus.jsp">About Us</a>
            <a  style="margin-right:2rem ;margin-left: 2rem"
                class="nav-link nav-item nav1 " href="${pageContext.request.contextPath}/authentication/authentication.jsp"><i class="fa-solid fa-user"></i></i></a>

        </div>

    </div>
</nav>




