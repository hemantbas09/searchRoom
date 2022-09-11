<%-- 
    Document   : link
    Created on : Sep 10, 2022, 11:26:27 PM
    Author     : hemant61
--%>

<%@page import="model.message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Link</title>
        <%@include file="cdn.jsp" %>
    </head>
    <body style="height: 100vh; background-color: #F9F9F9;">

        <%@include file="header.jsp" %>

        <div style="  height: 100%;
             display: flex;
             justify-content: center;
             align-items: center;">
            <div>

                <%

                    String msg = (String) session.getAttribute("msg");
                    if (msg != null) {
                %>

                <div style="font-size: 4rem; text-align: center" class="alert alert-danger" role="alert">

                    <%= msg%>
                </div>

                <%
                        session.removeAttribute("msg");
                    }

                %>





                <form style="font-size:3rem" id="link" action="<%= request.getContextPath()%>/insertLink" method="POST">
                    <!-- Name input -->
                    <div class="form-outline mb-4">
                        <label class="form-label" for="form4Example1">Username:</label>
                        <input  style="font-size:2rem ;width:50rem; border-radius: 25px;" type="text" id="form4Example1" class="form-control" name="currentUser" placeholder="Please Enter Your Username:" required/>
                    </div>

                    <!-- Email input -->
                    <div style="font-size:3rem" class="form-outline mb-4">
                        <label class="form-label" for="form4Example1">Link:</label>
                        <input style="font-size:2rem;width:50rem; border-radius: 25px;" type="text" id="form4Example1" class="form-control" name="link" placeholder="Please Enter Your Scoial Media Link:" required/>
                    </div>


                    <!-- Submit button -->
                    <button id="submit-btn" type="submit" class="btn btn-primary btn-block mb-4">Submit</button>
                </form>
            </div>
        </div>
        <%@include file="footer.jsp" %>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>


    </body>
</html>
