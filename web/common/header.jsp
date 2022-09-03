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
                        <li><a class="dropdown-item nav1" href="${pageContext.request.contextPath}/user/other.jsp">Other</a></li>
                    </ul>
                </li>
                <li class="nav-item nav1 nav2">
                    <a class="nav-link" href="${pageContext.request.contextPath}/user/post.jsp">Post</a>
                </li>
                <li class="nav-item nav1 nav2">
                    <a class="nav-link " href="${pageContext.request.contextPath}/user/aboutus.jsp">About Us</a>
                </li>
            </ul>
            
                    <a style="margin-right:7rem; " class="nav-link nav-item nav1 " href="${pageContext.request.contextPath}/user/search.jsp"><i class="fa-solid fa-magnifying-glass"></i></a>
                
            <a style="color: #ff9966;  /* fallback for old browsers */
color: -webkit-linear-gradient(to right, #ff5e62, #ff9966);  /* Chrome 10-25, Safari 5.1-6 */
color: linear-gradient(to right, #ff5e62, #ff9966); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
" class="nav-link nav-item nav1 " href="${pageContext.request.contextPath}/authentication/authentication.jsp"><i class="fa-solid fa-user-plus"></i></a>
           
        </div>

    </div>
</nav>




