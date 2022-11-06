<%-- 
    Document   : pst
    Created on : Aug 27, 2022, 11:41:01 PM
    Author     : hemant61
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post</title>
        <%@include file="../common/cdn.jsp" %>
        <link href="../Static/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <%
            String postUsername = (String) session.getAttribute("currentUser");
        
        %>
    
        
        <div class="container-fluid">

            <form method="POST" action="<%= request.getContextPath()%>/insertPost" >

                <div class="row">
                    <h3 style="text-align: center; font-size: 30px;">Post </h3>
                    <input type="hidden" name="currentUser" value="<%= postUsername%>">
                    <div class="col-sm-12">
                        <br>
                        <textarea name="post" style="font-size: 20px" class="form-control" id="details" rows="10" placeholder="Please inform the "></textarea>

                    </div>
                </div>
                <div class="row"><div class="col-sm-12">&nbsp;</div></div>
                <div class="row"><div class="col-sm-12">&nbsp;</div></div>



                <button style="margin-left: 110px; margin-top: -20px; width: 200px; padding: 12px;" class="btn btn-success">Upload</button>

                <div class="row"><div class="col-sm-12">&nbsp;</div></div>
                <div class="row"><div class="col-sm-12">&nbsp;</div></div>


            </form>
        </div>

        <div>


            <c:forEach   var="post" items="${listPost}">

                <section style="background-color: #eee;">
                    <div class="container my-5 py-5">
                        <div class="row d-flex justify-content-center">
                            <div class="col-md-12 col-lg-10 col-xl-8">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex flex-start align-items-center">


                                            <div>
                                                <h3 style="font-size: 2rem" class="fw-bold text-primary mb-1">
                                                    <i class="fa-solid fa-user"></i> ${post.username}
                                                </h3>
                                                <h3 style="font-size: 1.5rem" class="text-muted small mb-0">
                                                    <i class="fa-solid fa-calendar-days"></i> ${post.date}
                                                </h3>
                                            </div>
                                        </div>

                                        <p style="font-size: 2rem" class="mt-3 mb-4 pb-2">
                                            ${post.post}
                                        </p>



                                        <div class="float-end mt-2 pt-1">

                                            <button type="button" class="btn btn-outline-primary btn-sm">
                                                Message
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>




            </c:forEach>
        </div>

        <%@include file="../common/footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    </body>
</html>
