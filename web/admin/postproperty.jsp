
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Property</title>
        <%@include file="../common/cdn.jsp" %>
        <link rel="stylesheet" href="css/common.css">
    </head>
    <body>
       
        <%@include file="../common/header.jsp" %>
        <div class="container-fluid">
            <div class="row">
                
                <div class="col-sm-12">
                    <h3 style="text-align: center; font-size: 30px;">Post Property</h3>
                    
                    <h5 style="color: green">
                       
                    </h5>
                    <br>
                    <form method="POST" action="property_insert_controller" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-sm-4">
                                <label for="userid">ID:</label>
                                    
                                        <input type="text" value="" name="userid" id="userid" class="form-control">
                                        
                                        
                            </div>
                            <div class="col-sm-4">
                                <label for="username">Name:</label>
                                <input type="text" value="" name="username" id="username" class="form-control" required="">
                            </div>
                            <div class="col-sm-4">
                                <label>Contact</label>
                                <input type="text" value="" name="contact" id="contact" class="form-control" required="">
                            </div>
                          
                        </div>
                        <br><br>
                        <div class="row">
                            <div class="col-sm-4">
                                <label>Property Name</label>
                                <input type="text" name="pname" class="form-control" required="" placeholder="enter property name....">
                            </div>
                            <div class="col-sm-4">
                                <label>Price</label>
                                <input type="text" name="price" class="form-control" required="" placeholder="enter property price....">
                            </div>
                            
                            <div class="col-sm-4">
                                <label for="ptype">Type</label><br>
                                <select name="ptype" id="ptype" class="ptype" required="">
                                    <option value=" ">---- Select ----</option>
                                    <option value="Apartment">Apartment</option>
                                    <option value="Independent House/Villa">Independent House/Villa</option>
                                    <option value="Independent/Builder Floor">Independent/Builder Floor</option>
                                    <option value="Land">Land</option>
                                    <option value="Farmhouse">Farmhouse</option>
                                </select>
                            </div>
                        </div>
                        <br><br>
                        <div class="row">
                            <div class="col-sm-2">
                                <label for="srproperty">Property Status</label><br>
                                <select name="srproperty" id="srproperty" class="srproperty" required="">
                                    <option value=" ">---- Select ----</option>
                                    <option value="Sale">Sale</option>
                                    <option value="Rent">Rent</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <label for="psubtype">Sub-type</label><br>
                                <select name="psubtype" id="psubtypetype" class="psubtype" required="">
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
                                <select name="bedroom" id="bedroom" class="cityname" required="">
                                    <option value="null">---- Select ----</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <label for="bathroom">Bathrooms</label><br>
                                <select name="bathroom" id="bathroom" class="cityname" required="">
                                    <option value="null">---- Select ----</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <label for="cityname">City name</label><br>
                                <select name="cityname" id="cityname" class="cityname" required="">
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
                            <div class="col-sm-12">
                                <br>
                                <textarea name="details" id="details" class="form-control" required="" placeholder="Details..."></textarea>
                            </div>
                        </div>
                        <br><br>
                        <div class="row">
                            <div class="col-sm-4">
                                <label>Area</label>
                                <input class="form-control" type="text" name="area" id="area" required="" placeholder="property mesurement....">
                            </div>
                            <div class="col-sm-2">
                                <label for="areasq">Mesurement</label>
                                <select name="areasq" id="areasq" class="cityname" required="">
                                    <option value="null">---- Select ----</option>
                                    <option value="Square Feet">Square Feet</option>
                                    <option value="Square Meter">Square Meter</option>
                                    <option value="Square Yard">Square Yard</option>
                                    <option value="Acre">Acre</option>
                                    <option value="Hectare">Hectare</option>
                                    <option value="Gaj">Gaj</option>
                                    <option value="Kanal">Kanal</option>
                                    <option value="Bigha">Bigha</option>
                                    <option value="Biswa">Biswa</option>
                                    <option value="Killa">Killa</option>
                                    <option value="Lessa">Lessa</option>
                                    <option value="Dhur">Dhur</option>
                                    <option value="Pura">Pura</option>
                                    <option value="Chatak">Chatak</option>
                                    <option value="Marla">Marla</option>
                                    <option value="Katha">Katha</option>
                                    <option value="Ground">Ground</option>
                                    <option value="Cent">Cent</option>
                                    <option value="Murabba">Murabba</option>
                                    <option value="Guntha">Guntha</option>
                                    <option value="Karam">Karam</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <label for="file">Select images</label>
                                <input class="upload-box" type="file" id="file" name="file">
                            </div>
                            <div class="col-sm-4">
                                <label>Address</label>
                                <input class="form-control" type="text" name="address" id="address" required="" placeholder="property address..">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-6">
                                <label>Location</label>
                                <input class="form-control" type="text" name="location" id="location" required="" placeholder="property location...">
                            </div>
                            <div class="col-sm-6">
                                <br><br>
                                <button style="margin-left: 150px; margin-top: -20px; width: 200px; padding: 12px;" class="btn btn-success">Upload</button>
                            </div>
                        </div>
                        <div class="row"><div class="col-sm-12">&nbsp;</div></div>
                        <div class="row"><div class="col-sm-12">&nbsp;</div></div>
                        <div class="row"><div class="col-sm-12">&nbsp;</div></div>
                    </form>
                </div>
            </div>
        </div>
    </body>
    <script src="https://cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>
    <script>
        CKEDITOR.replace('details');
    </script>
</html>
