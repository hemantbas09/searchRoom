<%-- 
    Document   : message
    Created on : Sep 11, 2022, 9:58:27 AM
    Author     : hemant61
--%>

<%

String message=(String)session.getAttribute("msg");
if(message != null){
    
    out.println(message);
    session.removeAttribute(message);
    
    }

%>
