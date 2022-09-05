<%-- 
    Document   : pst
    Created on : Aug 27, 2022, 11:41:01 PM
    Author     : hemant61
--%>

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
       <%@include file="../common/header.jsp" %>
        
        <div class="container-fluid">
            
                    <form method="POST" action="property_insert_controller" enctype="multipart/form-data">
                       
                        <div class="row">
                            <h3 style="text-align: center; font-size: 30px;">Post </h3>
                            <div class="col-sm-12">
                                <br>
                                <textarea style="font-size: 20px" class="form-control" id="details" rows="10" placeholder="Please inform the "></textarea>
                                
                            </div>
                        </div>
                        <div class="row"><div class="col-sm-12">&nbsp;</div></div>
                        <div class="row"><div class="col-sm-12">&nbsp;</div></div>

               
                    
                    <button style="margin-left: 110px; margin-top: -20px; width: 200px; padding: 12px;" class="btn btn-success">Upload</button>
          
            <div class="row"><div class="col-sm-12">&nbsp;</div></div>
             <div class="row"><div class="col-sm-12">&nbsp;</div></div>
            

        </form>
    </div>
        
    <%@include file="../common/footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</body>
</html>
