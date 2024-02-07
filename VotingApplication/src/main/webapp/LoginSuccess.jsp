<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" import="com.nt.beans.Voter"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voter Profile</title>
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

        .container-1{
            width:550px;
            margin:10px;
            margin-left:50px;
        }

        .container-2{
            width:628px;
            margin:10px;
        }
    </style>
</head>
<body class="container-fluid">
	<% Voter ob = (Voter)session.getAttribute("voter"); %>
	<div id="div">
		<% String msg = (String)request.getAttribute("msg"); 
		   if(msg!=null)
		   {
		%>
	</div>
		<script type="text/javascript">
		    alert("<%= msg%>");
		<% 
		   }
		%>
		</script>
	
    <header class="bg-dark text-white m-4 rounded-1">
        <nav>
            <ul>
                <li><a href="Index.jsp">Home</a></li>
                <li><a href="#">Welcome <%= ob.getName() %></a></li>
                <li><a href="logout">Logout</a></li>
            </ul>
        </nav>
    </header>

    <main class="m-4 rounded-1 border border-success">
        <div class="mt-2">
            <p class="text-center text-dark" style="font-size:20px;"><u><b>User Dashboard</b></u></p>
        </div>
        <div class="main d-flex m-1">
            <div class="container-1">
                <p class="text-center text-success" style="font-size:18px;"><b>User Details</b></p>
                <h3 class="bi bi-person-fill text-center" style="font-size:83px;"></h3>
                <table class="table table-hover">
                    <tr>
                        <th>Name:</th>
                        <td><%=ob.getName() %></td>
                    </tr>
                    <tr>
                        <th>Email:</th>
                        <td><%=ob.getMailId() %></td>
                    </tr>
                    <tr>
                        <th>Phone No:</th>
                        <td><%=ob.getPhNo() %></td>
                    </tr>
                    <tr>
                        <th>Status:</th>
                        <td class="text-danger fw-bold"><%=ob.getStatus() %></td>
                    </tr>
                </table>
            </div>

            <form method="POST" action="vote">
            <div class="container-2 text-center">
                <p class="text-danger fw-bold"><%=ob.getName()  %> Do Voting</p>
                <input type="hidden" name="mail" value="<%= ob.getMailId() %>">
                <input type="radio" name="vote" value="candidate1"> <label>Candidate 1</label><br><br>
                <input type="radio" name="vote" value="candidate2"> <label>Candidate 2</label><br><br>
                <input type="radio" name="vote" value="candidate3"> <label>Candidate 3</label><br><br>
                <input type="radio" name="vote" value="candidate4"> <label>Candidate 4</label><br><br>
                <input type="submit" value="Vote" class="btn btn-success">
            </div>
            </form>
        </div>
    </main>
</body>
</html>