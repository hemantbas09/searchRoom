<%-- 
    Document   : header
    Created on : Sep 2, 2022, 9:49:59 PM
    Author     : hemant61
--%>

<nav class="navbar navbar-expand-lg bg-light header">
    <div class="container-fluid">

        <a class="navbar-brand logo" href="${pageContext.request.contextPath}/user/index.jsp">
            <i class="fa-solid fa-house"></i>
            <span>Room</span>Finder
        </a>
            


        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 mx-auto">

                <li class="nav-item nav1 nav2">
                    <a class="nav-link " href="${pageContext.request.contextPath}/user/search.jsp">Search</a>
                </li>

                <li class="nav-item nav1 nav2" >
                    <a class="nav-link " href="${pageContext.request.contextPath}/user/index.jsp">Home</a>
                </li>


                
                



                <li class="nav-item dropdown nav1 nav2">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Property
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item nav1" href="${pageContext.request.contextPath}/room">Room</a></li>
                        <li><a class="dropdown-item nav1" href="${pageContext.request.contextPath}/flat">Flat</a></li>
                        <li><a class="dropdown-item nav1" href="${pageContext.request.contextPath}/office">Office</a></li>
                        <li><a class="dropdown-item nav1" href="${pageContext.request.contextPath}/other">Other</a></li>
                    </ul>
                </li>
                <li class="nav-item nav1 nav2">
                    <a class="nav-link" href="<%= request.getContextPath()%>/postServalet">Post</a>
                </li>
                <li class="nav-item nav1 nav2">
                    <a class="nav-link " href="${pageContext.request.contextPath}/user/logaboutus.jsp">About Us</a>
                </li>
            </ul>

            <a class="nav-link nav-item nav1 " href="<%= request.getContextPath()%>/logoutServalet">Logout</a>
           
        </div>

    </div>
</nav>





