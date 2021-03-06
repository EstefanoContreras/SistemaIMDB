<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Show</title>
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
					</form>
					
				</li>
			</ul>
		</div>
	</nav>
	<div class="container mt-3">
		<h1 class="font-weight-bold">${editShow.showTitle}</h1>
		<form:errors path="show.*" />
		<div class="text-center">
			<c:if test="${errors != null}">
				<c:out value="${errors}"></c:out>
			</c:if>
		</div>
		<form:form method="POST" action="/shows/${editShow.id}/edit"
			modelAttribute="editShow">
			<div class="form-group row pt-2">
				<form:label path="showTitle"
					class="col-sm-2 col-form-label
col-form-label-sm">Show title: </form:label>
				<div class="col-sm-10">
					<form:input type="text" path="showTitle" class="form-control" />
				</div>
			</div>
			<div class="text-center my-2">
				<small><form:errors path="showTitle" /></small>
			</div>
			<div class="form-group row">
				<form:label path="showNetwork"
					class="col-sm-2 col-form-label
col-form-label-sm">Network: </form:label>
				<div class="col-sm-10">
					<form:input type="text" path="showNetwork" class="form-control" />
				</div>
			</div>
			<div class="text-center mt-2">
				<small><form:errors path="showNetwork" /></small>
			</div>
			<div class="text-center pt-4">
				<input type="submit" value="Update" class="btn
btn-lg btn-primary" />
			</div>
		</form:form>
		<c:if test="${currentUser.id == creatorShow.id }">
			<a href="/shows/${editShow.id}/delete" class="btn
btn-lg btn-danger">Delete</a>
		</c:if>
		<div class="mt-5 pb-5">
			<a href="/shows" class="btn btn-dark">Go back</a>
		</div>
	</div>


	<div class="card  text-white border-dark bg-dark" style="width: 18rem;margin: auto;">
			
		<div class="container mt-3">
		<h1 class="font-weight-bold">${editShow.showTitle}</h1>
		<form:errors path="show.*" />
		<div class="text-center">
			<c:if test="${errors != null}">
				<c:out value="${errors}"></c:out>
			</c:if>
		</div>
		<form:form method="POST" action="/shows/${editShow.id}/edit"
			modelAttribute="editShow">
			<div class="form-group row pt-2">
				<form:label path="showTitle"
					class="col-sm-2 col-form-label
col-form-label-sm">Show title: </form:label>
				<div class="col-sm-10">
					<form:input type="text" path="showTitle" class="form-control" />
				</div>
			</div>
			<div class="text-center my-2">
				<small><form:errors path="showTitle" /></small>
			</div>
			<div class="form-group row">
				<form:label path="showNetwork"
					class="col-sm-2 col-form-label
col-form-label-sm">Network: </form:label>
				<div class="col-sm-10">
					<form:input type="text" path="showNetwork" class="form-control" />
				</div>
			</div>
			<div class="text-center mt-2">
				<small><form:errors path="showNetwork" /></small>
			</div>
			<div class="text-center pt-4">
				<input type="submit" value="Update" class="btn
btn-lg btn-primary" />
			</div>
		</form:form>
		<c:if test="${currentUser.id == creatorShow.id }">
			<a href="/shows/${editShow.id}/delete" class="btn
btn-lg btn-danger">Delete</a>
		</c:if>
		<div class="mt-5 pb-5">
			<a href="/shows" class="btn btn-dark">Go back</a>
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