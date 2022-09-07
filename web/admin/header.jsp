<%-- 
    Document   : header
    Created on : Sep 5, 2022, 5:02:38 PM
    Author     : hemant61
--%>

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

                <li class="nav-item nav1 nav2">
                    <a class="nav-link " href="${pageContext.request.contextPath}/admin/postproperty.jsp">Post Property</a>
                </li>






                <li class="nav-item nav1 nav2">
                    <a class="nav-link" href="<%= request.getContextPath()%>/list">MyProperties</a>
                </li>
                <li class="nav-item nav1 nav2">
                    <a class="nav-link " href="${pageContext.request.contextPath}/user/aboutus.jsp">About Us</a>
                </li>
            </ul>

            <a class="nav-link nav-item nav1 " href="<%= request.getContextPath()%>/logoutServalet">Logout</a>

        </div>

    </div>
</nav>






