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
                                <input type="text" id="contact" name="contact" value="${contact}"><br><br>
                            </div>

                            <div class="col-sm-2">
                                <label for="file">Select images</label>
                                <input class="upload-box" type="file"  name="file" value="${propotyImage}">
                            </div>

                            <div class="col-sm-4">
                                <label>Price</label>
                                <input value="${property.propotyPrice}" style="font-size: 20px" type="text" name="price" class="form-control" required="" placeholder="enter property price....">
                            </div>
                            <div class="col-sm-4">
                                <label>Address</label>
                                <input value="${property. propotyLocation}" style="font-size: 20px" class="form-control" type="text" name="address"  required="" placeholder="property address..">
                            </div>

                            <div class="col-sm-4">
                                <label for="ptype"> Property Type</label><br>
                                <select name="ptype"  value="${property.propotyType}">
                                    <option value=" ">---- Select ----</option>
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

                                    <textarea value="${property.otherInformation}" name="otherDetails" style="font-size: 20px" class="form-control"  rows="10" placeholder="Please inform the "></textarea>

                                </div
                            </div

                            <div class="col-sm-6">
                                <input class="btn btn-success" style="margin-left: 150px; margin-top: -20px; width: 200px; padding: 12px;" type="submit" value="Update">
                            </div>
                    </form>
                </div>
                <%@include file="../common/footer.jsp" %>
                </body>


                </html>

