
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Property</title>
        <%@include file="../common/cdn.jsp" %>
        <link rel="stylesheet" href="css/common.css">
    </head>
    <body style="font-size: 20px">
        <%
            String username = (String) session.getAttribute("currentUser");%>

        <%@include file="header.jsp" %>
        <div class="container-fluid">
            <div class="row">

                <div class="col-sm-12">
                    <h3 class="indexProperty" ><strong>Post Property:</strong></h3>

                    <form style="margin: 3.5rem" action="<%= request.getContextPath()%>/insert" method="post" enctype="multipart/form-data" >
                        <div class="row">

                            <div class="col-sm-4 ">
                                <label for="propertyname">Property Name:</label><br>
                                <input  class=" border border-dark" type="text" id="propertyname" name="propertyname" placeholder="Enter Your Property Name" required=""><br>
                            </div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <div class="col-sm-2">
                                <label for="contact">Contact:</label><br>
                                <input class=" border border-dark" type="text" id="contact" name="contact" placeholder="Enter Your Contact Number" required=""><br><br>
                            </div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                            <div class="col-sm-4">
                                <label for="ptype"> Property Type:</label><br>
                                <select name="ptype"  required="">
                                    <option value=" ">---- Select ----</option>
                                    <option value="Room">Room</option>
                                    <option value="Flat">Flat</option>
                                    <option value="House">House</option>
                                    <option value="Office">Office</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                            <div class="col-sm-2">
                                <label for="file">Select images:</label>
                                <input class="upload-box" type="file"  name="file">
                            </div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;



                            <div class="col-sm-4">
                                <label>Price:</label>
                                <input  style="font-size: 20px" type="text" name="price" class="form-control" required  placeholder="Enter Price of the Property" >
                            </div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <div class="col-sm-4">
                                <label>Address:</label>
                                <input  style="font-size: 20px" class="form-control" type="text" name="address"  required placeholder="Enter the Location Of the Property">
                            </div>

                            <div class="col-sm-4">

                                <input class=" border border-dark" type="hidden" id="currentUser" name="currentUser" value="<%=  username%>"><br>
                            </div>


                            <div class="row">
                                <h3 class="indexProperty" ><strong>Other Property Information:</strong></h3>
                                <div class="col-sm-12">

                                    <textarea  name="otherDetails" style="font-size: 20px" class="form-control"  rows="10" placeholder="Please Enter allthe information of the Property and Other needed requirement  "></textarea>

                                </div
                            </div

                            <div class="col-sm-6">
                                <input class="btn btn-success" style="margin-left: 150px; margin-top: 4rem; width: 200px; padding: 12px;" type="submit" value="Submit">
                            </div>
                    </form>
                </div>
                <%@include file="../common/footer.jsp" %>
                </body>


                </html>
