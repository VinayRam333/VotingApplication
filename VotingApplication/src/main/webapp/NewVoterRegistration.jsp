<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Voter Registration</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <style>
        body{
            background-image: url('https://www.abs-tpa.com/wp-content/uploads/2019/10/landing_cards_img_gen2-760x340.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            background-position: inherit;
            background-attachment:fixed;
            opacity:1;
        } 
    </style>    
</head>
<body>
	<%@ include file="Index.jsp" %>
    <div style="height:600px;margin-left:500px;" class="d-flex justify-content-center align-items-center">
        <div>
            <h5 class="text-white text-center bi bi-person-bounding-box" style="font-weight:bolder; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">
                NEW VOTER REGISTRATION
            </h5>
            <form action="reg" method="POST" class="border border-3 border-success-subtle rounded-1 p-3" style="width:300px;">
                <dl class="text-dark">
                    <dt class="bi bi-person-fill">FullName:</dt>
                    <dd>
                        <input type="text" name="name" required class="form-control">
                    </dd>
                    <dt class="bi bi-lock-fill">password:</dt>
                    <dd>
                        <input type="text" name="pwd" required class="form-control">
                    </dd>
                    <dt class="bi bi-envelope-fill">EmailId:</dt>
                    <dd>
                        <input type="email" name="mail" required class="form-control">
                    </dd>
                    <dt class="bi bi-phone-fill">PhoneNo:</dt>
                    <dd>
                        <input type="text" name="phn" required class="form-control">
                    </dd>
                    <dd>
                        <input type="hidden" name="status" value="NOT VOTED" required class="form-control">
                    </dd>
                </dl>
                <div class="text-center">
                    <input type="submit" value="Signup" class="fw-bold btn btn-primary w-100">
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>