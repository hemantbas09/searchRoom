
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Property</title>
        <%@include file="../common/cdn.jsp" %>
        <link rel="stylesheet" href="css/common.css">
    </head>
    <body style="font-size: 20px">

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
                                <label for="username"> Property Name:</label>
                                <input style="font-size: 20px" type="text" value="" name="propertyname" id="username" class="form-control" placeholder="enter property name...." required="">
                            </div>

                            <div class="col-sm-4">
                                <label>Contact</label>
                                <input style="font-size: 20px" type="text" value="" name="contact" id="contact" class="form-control"  required="">
                            </div>
<div class="col-sm-2">
                            <label for="file">Select images</label>
                            <input class="upload-box" type="file" id="file" name="file">
                        </div>
                        </div>
                        <br><br>
                        <div class="row">

                            <div class="col-sm-4">
                                <label>Price</label>
                                <input style="font-size: 20px" type="text" name="price" class="form-control" required="" placeholder="enter property price....">
                            </div>
                            <div class="col-sm-4">
                                <label>Address</label>
                                <input style="font-size: 20px" class="form-control" type="text" name="address" id="address" required="" placeholder="property address..">
                            </div>

                            <div class="col-sm-4">
                                <label for="ptype"> Property Type</label><br>
                                <select name="ptype" id="ptype" class="ptype" required="">
                                    <option value=" ">---- Select ----</option>
                                    <option value="Apartment">Room</option>
                                    <option value="Independent House/Villa">Flat</option>
                                    <option value="Independent/Builder Floor">House</option>
                                    <option value="Land">Office</option>
                                    <option value="Farmhouse">Other</option>
                                </select>
                            </div>
                        </div>
                        <br><br>







                        
                        
                        <br>
                        <div class="row">
                            <h3 style="text-align: center; font-size: 30px;">Other Property Information</h3>
                            <div class="col-sm-12">
                                <br>
                                <textarea style="font-size: 60px" name="details" id="details" class="form-control" required="" placeholder="Details..."></textarea>
                            </div>
                        </div>
                        <br><br>

                        


                </div><br>

                <div class="col-sm-6">
                    <br><br>
                    <button style="margin-left: 150px; margin-top: -20px; width: 200px; padding: 12px;" class="btn btn-success">Upload</button>
                </div>
            </div>
            <div class="row"><div class="col-sm-12">&nbsp;</div></div>
            <div class="row"><div class="col-sm-12">&nbsp;</div></div>

        </form>
    </div>

    <%@include file="../common/footer.jsp" %>
</body>
<script src="https://cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>
<script>
    CKEDITOR.replace('details');
</script>
</html>
