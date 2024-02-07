<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
     <%@ include file="Index.jsp" %>
     
    <div style="height:500px;" class="d-flex justify-content-center align-items-center">
        <form action="admin" method="POST">
            <h5 class="text-center text-warning">ADMIN SIGNIN</h5>
            <div class="border border-1 border-dark rounded-1 p-3">
                <div class="form-group">
                    <label class="fw-bold">Email address:</label>
                    <input type="email" required class="form-control" name="mail" placeholder="Enter email">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                    <label class="fw-bold">Password:</label>
                    <input type="password" required class="form-control" name="pwd" placeholder="Password">
                </div>
                <input type="submit" value="Login" class="btn btn-success w-100 mt-2">
            </div>
          </form>
    </div>
</body>
</html>