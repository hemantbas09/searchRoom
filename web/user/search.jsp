

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Home Page</title>
        <%@include file="../common/cdn.jsp" %>
        <link href="../Static/css/style.css" rel="stylesheet" type="text/css"/>
   
    </head>

    <body>
        <%@include file="header.jsp" %>
        <div class="container-fluid">
            <form method="post" action="../PropertySearch_controller">
                <div class="row">
                    <div class="col-sm-4">
                        <label for="ptype">Type</label><br>
                        <select name="ptype" id="ptype" class="ptype" style="
                                padding: 10px 150px;border: 0.5px solid #404040;border-radius: 15px;" required="">
                                    <option value=" ">---- Select ----</option>
                                    <option value="Apartment">Apartment</option>
                                    <option value="Independent House/Villa">Independent House/Villa</option>
                                    <option value="Independent/Builder Floor">Independent/Builder Floor</option>
                                    <option value="Land">Land</option>
                                    <option value="Farmhouse">Farmhouse</option>
                        </select>
                    </div>
                    <div class="col-sm-4">
                        <label for="minprice">Min - Price</label><br>
                        <input type="text" name="minprice" class="form-control" required="" placeholder="price 2000 - 500 lakh Rs....">
                    </div>
                    <div class="col-sm-4">
                        <label for="maxprice">Max - Price</label><br>
                        <input type="text" name="maxprice" class="form-control" required="" placeholder="price 2000 - 500 lakh Rs....">
                    </div>
                </div>
                <br><br>
                <div class="row">
                    <div class="col-sm-2">
                        <label for="srproperty">Property Status</label><br>
                        <select name="srproperty" id="srproperty" class="srproperty" style="
                                padding: 10px 60px;border: 0.5px solid #404040;border-radius: 15px;" required="">
                                    <option value=" ">---- Select ----</option>
                                    <option value="Sale">Sale</option>
                                    <option value="Rent">Rent</option>
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <label for="psubtype">Sub - type</label><br>
                        <select name="psubtype" id="psubtypetype" class="psubtype" style="
                                padding: 10px 60px;border: 0.5px solid #404040;border-radius: 15px;" required="">
                                    <option value=" ">---- Select ----</option>
                                    <option value="1RK">1RK</option>
                                    <option value="2RK">2RK</option>
                                    <option value="3RK">3RK</option>
                                    <option value="4RK">4RK</option>
                                    <option value="1BHK">1BHK</option>
                                    <option value="2BHK">2BHK</option>
                                    <option value="3BHK">3BHK</option>
                                    <option value="4BHK">4BHK</option>
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <label for="bedroom">Bedrooms</label><br>
                        <select name="bedroom" id="bedroom" class="cityname" style="
                                padding: 10px 60px;border: 0.5px solid #404040;border-radius: 15px;" required="">
                                    <option value=" ">---- Select ----</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <label for="bathroom">Bathrooms</label><br>
                        <select name="bathroom" id="bathroom" class="cityname" style="
                                padding: 10px 60px;border: 0.5px solid #404040;border-radius: 15px;" required="">
                                    <option value=" ">---- Select ----</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <label for="cityname">City name</label><br>
                        <select name="cityname" id="cityname" class="cityname" style="
                                padding: 10px 60px;border: 0.5px solid #404040;border-radius: 15px;" required="">
                                    <option value=" ">---- Select ----</option>
                                    <option value="Mumbai">Mumbai</option>
                                    <option value="Pune">Pune</option>
                                    <option value="Nagpur">Nagpur</option>
                                    <option value="Nashik">Nashik</option>
                                    <option value="Thane">Thane</option>
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <label>Pin code</label>
                        <input type="text" name="pincode" class="form-control" required="" placeholder="enter pincode....">
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-sm-12" style="text-align: center;">
                        <br><br>
                        <button style="width: 200px; padding: 12px;" class="btn btn-success">Search</button>
                    </div>
                </div>
            </form>
            <form>
                <br><br>
                
                <div class="col-sm-3" style="padding: 30px;">
                    
                       
                        <div class="property_wrapper" style="margin-left: 550px;">
                            <h2 style="text-align: center;">No result found . . .</h2>
                        </div>
                       
                        <div class="property_wrapper" style="text-align: center;">
                                <img src="" class="pimg" style="width: 300px; height: 260px; display: inline;"><br><br>
                                
                                <div class="property_pname">
                                    <h4 style="font-weight: bold; display: inline;">Property Name: </h4>
                                    <h4 style="display: inline;"></h4>
                                </div><br>
                                <div class="property_price">
                                    <h4 style="font-weight: bold; display: inline">Price: </h4>
                                    <h4 style="display: inline;"> <span>&#8377;</span></h4>
                                </div><br>
                                <div class="property_cityname">
                                    <h4 style="font-weight: bold; display: inline">City name: </h4>
                                    <h4 style="display: inline;"></h4>
                                </div><br>
                                <div class="property_srproperty">
                                    <h4 style="font-weight: bold; display: inline">Property status: </h4>
                                    <h4 style="display: inline;"></h4>
                                </div><br>
                                <div class="property_ptype">
                                    <h4 style="font-weight: bold; display: inline">Type: </h4>
                                    <h4 style="display: inline;"></h4>
                                </div><br>
                                <div class="property_psubtype">
                                    <h4 style="font-weight: bold; display: inline">Sub-Type: </h4>
                                    <h4 style="display: inline;"></h4>
                                </div><br>
                                <a href=""><button class="userbutton">Check Out</button></a><br><br>
                            </div><br><br>
                      
                    </div>
                 
           </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    </body>
</html>
