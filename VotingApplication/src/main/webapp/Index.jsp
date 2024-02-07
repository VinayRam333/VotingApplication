<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <style>
        header{
            height:45px;
        }

        nav ul{
            list-style:none;
            display: flex;
            margin:0;
            padding:0;
        }

        li a{
            text-decoration: none;
            color: white;
            display: block;
            margin:10px;
        }

        li:hover{
            background-color:green;
        }

       /* div{
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            height:60px;
            display: flex;
            justify-content: center;
            align-items: center;
        } */
    </style>
</head>
<body>

    <header class="rounded-1 bg-dark text-white m-4">
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="NewVoterRegistration.jsp">New Voter Registration</a></li>
                <li><a href="VoterSignin.jsp">Voter Signin</a></li>
                <li><a href="AdminSignin.jsp">Admin Signin</a></li>
                <li><a href="#">About</a></li>
            </ul>
        </nav>
    </header>

   <!--  <div class="border border-2 rounded-1 border-success m-4">
        <h4>Voting Application</h4>
    </div>  -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>