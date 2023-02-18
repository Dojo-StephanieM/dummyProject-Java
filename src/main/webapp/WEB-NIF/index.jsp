<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
 <head>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <!-- YOUR own local CSS -->
    <link rel="stylesheet" href="/css/main.css"/>
    <!-- For any Bootstrap that uses JS or jQuery-->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
        <meta charset="UTF-8">
        <title>Dorms</title>
</head>
<body>
    <h1>Dorms</h1>
    <a href="/dorm/new">Add a new dorm</a>
    <a href="/student/new">Add a new student </a>

<table class="table table-striped">
<thead>
<tr>
<th>Dorm Name</th>

<th>Actions</th>
</tr>
</thead>
<c:forEach items="${dorms}" var="dorm">
	<tr>
		<td>${dorm.name}</td>
		<td><a href="/dorm/details/${dorm.id}">See Students</a>
		
	</tr>	
	</c:forEach>
</table>
</body>
</html>