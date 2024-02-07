<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.nt.beans.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Candidate Information</title>
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
    <%ArrayList<Candidates> al = (ArrayList<Candidates>)session.getAttribute("cd"); %>
    
    <%@ include file="AdminProfile.jsp" %>
    <table class="table table-hover text-center w-25">
        <tr class="bg-success text-white">
          <th>Name</th><th>VoteCount</th>
       </tr>
    <% 
       Iterator<Candidates> ob = al.iterator();
       while(ob.hasNext())
       {
    	   Candidates cd = (Candidates)ob.next();
    %>

       <tr class="">
          <td><%=cd.getName() %></td>
          <td><%=cd.getVote_count() %></td>
       </tr>
    <%
       }//while
    %>
    </table>
    
</body>
</html>