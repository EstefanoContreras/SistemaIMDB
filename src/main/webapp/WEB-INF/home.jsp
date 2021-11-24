<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<link href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" rel="stylesheet" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
</head>
<body style="background-color: #48494b;">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="/"><i class="fab fa-imdb fa-inverse fa-4x"></i></a>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item mr-5"><a class="nav-link" href="/shows/new"><i class="fas fa-plus fa-inverse"></i>&nbspAdd
						a show</a></li>
				
				<li class="nav-item">
					
					<form class = "pt-1" id="logoutForm" method="POST" action="/logout">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" /> <button type="submit" class="btn btn-secondary active">
							<i class="fas fa-sign-out-alt"></i> Logout</button>
							<!-- <input type="submit" value="Logout"
							class="btn btn-secondary active" > -->
					</form>
					
				</li>
			</ul>
		</div>
	</nav>
	


<div class="container" style="margin-top: 3rem;">
		
		<div class="card  text-white border-dark bg-dark" style="width: auto;margin: auto;">
		<div class="container">
				<h2 class="font-weight-bold mt-2">
					Welcome  
					<c:out value="${currentUser.username}"></c:out>
				</h2>
				<hr style="width:100%", size="3", color=black>  
				<button type="button" class="btn btn-secondary" ><a href="/shows/" style="color: white;text-decoration: none;">TV Shows</a></button>
				
			</div>
			<div class="container">
			<table class="table table-dark">
				<thead>
					
					<tr>
						<th scope="col">Show</th>
						<th scope="col">Network</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${allShows}" var="show">
						<tr>
							<td scope="row"><a href="/shows/${show.id}"
								class="text-info
	font-weight-bold"style="text-decoration: none;">${show.showTitle}</a></td>
							<td>${show.showNetwork}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		  </div>
		  </div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew
+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.j
s"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7n
iu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min
.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEf
YiJOMMV+rV"
		crossorigin="anonymous"></script>
</body>
</html>