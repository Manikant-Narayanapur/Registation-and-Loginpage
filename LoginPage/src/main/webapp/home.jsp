<%@page import="com.entities.user"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
user us2 = (user) session.getAttribute("user-ob");
if (us2 == null) {
	session.setAttribute("login-msg", "Please login First....");
	response.sendRedirect("login.jsp");
}
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<a class="navbar-brand" href="#">THEN WHAT!!</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
				</li>

				<li class="nav-item"><a class="nav-link disabled"
					href="register.jsp">Register</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<div class="container">
		<div class="row d-flex justify-content-center align-items-center mt-4">
			<div class="col-md-6">
				<div class="card">
					<%
					user us1 = (user) session.getAttribute("user-ob");
					%>
					<%
					if (us2 != null) 
					{%>
					
					<div class="card-body">
						<h1>
							Name:<%=us1.getName()%></h1>
						<h1>
							Email:<%=us1.getEmail()%></h1>
						<div class: "container text-center" >
							<a class="btn btn-primary btn-lg text-white "
								href="logoutServlet">Logout</a>
						</div>
					</div>

					<%
					}
					%>
				</div>
			</div>
		</div>
</body>
</html>