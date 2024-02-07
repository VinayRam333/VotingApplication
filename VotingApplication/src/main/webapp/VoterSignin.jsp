<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signin</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <style>
        .image{
            background-image: url('https://wallpaperaccess.com/full/1900857.jpg');
            background-position: center;
            background-repeat:no-repeat;
            background-size: cover;
            background-attachment: fixed;
            opacity:0.9;
        }
    </style>
</head>
<body>
    <%@ include file="Index.jsp" %>
    <div class="d-flex m-4">
        <div style="height:619px; width:678px;" class="image d-flex justify-content-center align-items-center">
            <div>
                <h4 class="text-center text-white bi bi-person-bounding-box"> Voter Signin</h4>
                <form action="login" method="POST" class="border border-2 border-danger-subtle p-3 rounded-2">
                    <dl class="text-warning">
                        <dt class="bi bi-envelope-fill"> EmailId:</dt>
                        <dd>
                            <input type="email" name="mail" value="vinay@gmail.com" class="form-control">
                        </dd>
                        <dt class="bi bi-lock-fill"> Password:</dt>
                        <dd>
                            <input type="password" name="pwd" value="Vinay@333" class="form-control">
                        </dd>
                    </dl>
                    <div class="text-center">
                        <input type="submit" value="Signin" class="w-100 fw-bold btn btn-success">
                    </div>
                </form>
            </div>
            
        </div>
        
        <div style="height:580px; width:600px;" class="p-5 d-flex justify-content-center align-items-center">
            <p style="font-size:17px; text-align:justify;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">
                A concept is well known by all democratic nations since most of the things are decided with elections. 
                Different governors, mayors, judges, and presidents are all selected by the general population through the voting system, or else they are decided upon by the elected officials.<br><br>
                Personally believe that everyone should vote as everyone has a different opinion and in our Indian democracy we have the ability to choose who can preside over in the office, this also gives us an opportunity to have a say in this political world. 
                The entire purpose of a democracy is to be able to have a say in the political scenario and this is to make sure everyone's voice is heard and this is what makes up a democracy with everyone participating in it.
            </p>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>