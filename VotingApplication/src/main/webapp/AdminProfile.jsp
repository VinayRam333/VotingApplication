<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" import="com.nt.beans.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Profile</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <style>
        header{
            height:45px;
        }

        nav ul{
            list-style: none;
            display: flex;
            margin: 0;
            padding: 0;
        }
        ul a{
            text-decoration: none;
            color: white;
            display: block;
            margin: 10px;
        }
        li:hover{
            background-color: green;
        }
    </style>
</head>
<body class="container-fluid">
	<% AdminBean ab = (AdminBean)(session.getAttribute("ab")); 

	%>
    <header class="bg-dark text-white m-4 rounded-1">
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Welcome <%= ab.getName() %></a></li>
                <li><a href="viewCandidates">View Candidates</a></li>
                <li><a href="viewVoters">View Voters</a></li>
                <li><a href="logout">Logout</a></li>
            </ul>
        </nav>
    </header>