<%-- 
    Document   : editForm
    Created on : Sep 7, 2022, 4:56:59 PM
    Author     : hemant61
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Property</title>
        <%@include file="../common/cdn.jsp" %>
        <link rel="stylesheet" href="css/common.css">
    </head>
    <body style="font-size: 20px">
        
     
        <%@include file="../common/header.jsp" %>
        <div class="container-fluid">
            <div class="row">

                <div class="col-sm-12">
                    <h3 style="text-align: center; font-size: 30px;">Update Property</h3>

                    <form action="<%= request.getContextPath()%>/update" method="post">
                        <div class="row">

                            <div class="col-sm-4">
                                <label for="propertyname">Property Name:</label><br>
                                <input type="text" id="propertyname" name="propertyname" value="${property.name}"><br>
                            </div>
                            

                            <div class="col-sm-2">
                                <label for="contact">Contact:</label><br>
                                <input type="text" id="contact" name="contact" value="${property.contact}"><br><br>
                            </div>
                            <div class="col-sm-2">
                                <label for="propertyId">ID:</label><br>
                                <input type="text" id="propertyId" name="propertyId" value="${property.propetyId}"><br><br>
                            </div>

                            <div class="col-sm-2">
                                <label for="file">Select images</label>
                                <input class="upload-box" type="file"  name="file" value="${property.propotyImage}">
                            </div>
                            
                              <img src="${property.propotyImage}" alt="Italian Trulli">
                            <div class="col-sm-4">
                                <label>Price</label>
                                <input value="${property.propotyPrice}" style="font-size: 20px" type="text" name="price" class="form-control" required="">
                            </div>
                            <div class="col-sm-4">
                                <label>Address</label>
                                <input value="${property. propotyLocation}" style="font-size: 20px" class="form-control" type="text" name="address"  required="" >
                            </div>

                            <div class="col-sm-4">
                                <label for="ptype" > Property Type</label><br>
                                <select name="ptype"  >
                                    <option>${property.propotyType}</option>
                                    <option value="Room">Room</option>
                                    <option value="Flat">Flat</option>
                                    <option value="House">House</option>
                                    <option value="Office">Office</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                            <div class="row">
                                <h3 style="text-align: center; font-size: 30px;">Other Property Information</h3>
                                <div class="col-sm-12">

                                    <textarea  name="otherDetails" style="font-size: 20px" class="form-control"  rows="10">${property.otherInformation}</textarea>

                                </div
                            </div>
                                    <div class="col-sm-6">
                               
                              
                                 <input class="btn btn-success" type="submit" value="Update">          
                               
                         
                            </div>
                    </form>

                            
                </div>
                <%@include file="../common/footer.jsp" %>
                </body>


                </html>

