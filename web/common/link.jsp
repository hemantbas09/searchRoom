<%-- 
    Document   : link
    Created on : Sep 10, 2022, 11:26:27 PM
    Author     : hemant61
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Link</title>
        <%@include file="cdn.jsp" %>
    </head>
    <body>
        <%@include file="header.jsp" %>
  ${s}
  <form action="<%= request.getContextPath()%>/insertLink" method="POST">
  <!-- Name input -->
  <div class="form-outline mb-4">
      <label class="form-label" for="form4Example1">Name</label>
    <input type="text" id="form4Example1" class="form-control" name="currentUser" />
  </div>

  <!-- Email input -->
  <div class="form-outline mb-4">
       <label class="form-label" for="form4Example1">Link</label>
       <input type="text" id="form4Example1" class="form-control" name="link" />
  </div>
 

  <!-- Submit button -->
  <button type="submit" class="btn btn-primary btn-block mb-4">Send</button>
</form>
        
        
        <%@include file="footer.jsp" %>
    </body>
</html>
