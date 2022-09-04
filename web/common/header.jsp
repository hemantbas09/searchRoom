<nav class="navbar navbar-expand-lg bg-light header">
    <div class="container-fluid">

        <a class="navbar-brand logo" href="${pageContext.request.contextPath}/index.jsp">
            <i class="fa-solid fa-house"></i>
            <span>Room</span>Finder
        </a>


        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 mx-auto">



                <li class="nav-item nav1 nav2" >
                    <a class="nav-link " href="${pageContext.request.contextPath}/index.jsp">Home</a>
                </li>


                




                <li class="nav-item dropdown nav1 nav2">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Property
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item nav1" href="${pageContext.request.contextPath}/user/room.jsp">Room</a></li>
                        <li><a class="dropdown-item nav1" href="${pageContext.request.contextPath}/user/flat.jsp">Flat</a></li>
                        <li><a class="dropdown-item nav1" href="${pageContext.request.contextPath}/user/office.jsp">Office</a></li>
                        <li><a class="dropdown-item nav1" href="${pageContext.request.contextPath}/authentication/resetPassword.jsp">Other</a></li>
                    </ul>
                </li>
                <li class="nav-item nav1 nav2">
                    <a class="nav-link" href="${pageContext.request.contextPath}/user/post.jsp">Post</a>
                </li>
                <li class="nav-item nav1 nav2">
                    <a class="nav-link " href="${pageContext.request.contextPath}/user/aboutus.jsp">About Us</a>
                </li>
            </ul>

            <a style="margin-right:3rem; " class="nav-link nav-item nav1 " href="${pageContext.request.contextPath}/user/search.jsp"><i class="fa-solid fa-magnifying-glass"></i></a>

            <a 
                class="nav-link nav-item nav1 " href="${pageContext.request.contextPath}/authentication/authentication.jsp"><i class="fa-solid fa-user"></i></i></a>

        </div>

    </div>
</nav>




