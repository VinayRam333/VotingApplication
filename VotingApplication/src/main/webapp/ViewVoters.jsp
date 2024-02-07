<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.nt.beans.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voters Information</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
	<style>
	   .table{
            padding:10px;
            margin: auto;
            margin-top:15px;
            border:2px solid black;
            border-radius:5px;
        } 
	</style>
</head>
<body>
    <%ArrayList<Voter> al = (ArrayList<Voter>)session.getAttribute("al"); %>
    
    <%@ include file="AdminProfile.jsp" %>
    <table class="table table-hover text-center w-75">
        <tr class="bg-success text-white">
          <th>No<th>Name</th><th>Mail</th><th>Phone</th><th>Status</th><th>Actions</th>
       </tr>
    <% 
    	int count=1;
       Iterator<Voter> it = al.iterator();
       while(it.hasNext())
       {
    	   Voter ob = (Voter)it.next();
    %>

       <tr>
          <td><%= count++ %></td>
          <td><%=ob.getName() %></td>
          <td><%=ob.getMailId() %></td>
          <td><%=ob.getPhNo() %></td>
          <td class="fw-bold"><%=ob.getStatus() %></td>
          <td>
             <a href="EditVoter.jsp" class="btn btn-secondary">Edit</a>
             <a href="DeleteVoter.jsp" class="btn btn-danger">Delete</a>
          </td>
       </tr>
    <%
       }//while
    %>
    </table>
    
</body>
</html>