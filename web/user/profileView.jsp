

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <%--<%@include file="common/cdn.jsp" %>--%>
        <link rel="stylesheet" href="css/common.css">
    </head>
    <body>
        <%--<%@include file="admin/common/header.jsp" %>--%>
        
        <div class="container">
            <div class="row" style="padding-top: 20px;">
                <div class="col-sm-3">&nbsp;</div>
                <div class="col-sm-6" style="background-color: #cccccc; border: 1px solid black; border-radius: 20px; padding: 40px;">
                    
                    <div class="row">
                        <div class="col-sm-12" style="text-align: center;">
                            <img src="" class="pimg" style="width: 300px; height: 260px; border: 1px solid black; border-radius: 180px;">
                        </div>
                    </div><br><br>
                    <div class="row">
                        <div class="col-sm-12">
                            <h3 style="font-size: 20px; font-weight: bold; display: inline; margin-left: 95px;">Username:</h3><h3 style="text-transform: uppercase; font-size: 20px; display: inline; margin-left: 135px;"></h3><br><br>
                            <h3 style="font-size: 20px; font-weight: bold; display: inline; margin-left: 95px;">Name:</h3><h3 style="text-transform: uppercase; font-size: 20px; display: inline; margin-left: 125px;"></h3><br><br>
                            <h3 style="font-size: 20px; font-weight: bold; display: inline; margin-left: 95px;">Email:</h3><h3 style=" font-size: 20px; display: inline; margin-left: 125px;"></h3><br><br>
                            <h3 style="font-size: 20px; font-weight: bold; display: inline; margin-left: 95px;">Contact:</h3><h3 style=" font-size: 20px; display: inline; margin-left: 105px;"></h3><br><br>
                            
                            <h3 style="font-size: 20px; font-weight: bold; display: inline; margin-left: 95px;">Address:</h3><h3 style="text-transform: uppercase; font-size: 20px; display: inline; margin-left: 135px;"></h3><br><br>
             
                       
                    </div>
                    <div class="row" style="padding-top: 25px;">
                        <div class="col-sm-12" style="text-align: center;">
                            <a href=""><input type="button" class="upbtn" value="Update" style="background-color: #4CAF50; color: white;
                                   font-size: 20px;border: 2px solid #4CAF50;padding: 10px 25px;text-align: center;text-decoration: none;
                                   display: inline-block;border-radius: 25px;"></a>
                            
                        </div>
                    </div> 
                </div>
                <div class="col-sm-3">&nbsp;</div>
            </div>
        </div>
        <%--<%@include file="common/footer.jsp" %>--%>
    </body>
</html>
