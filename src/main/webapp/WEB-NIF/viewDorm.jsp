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
        <title>View Dorm</title>
</head>
<body>
<h1>${dorm.name}</h1>
<form action="/student/update/${dorm.id}" method="POST" >
		
		<div class = "form-group">
		<label for="id">Students:</label>
    	<select name="id" id="id" class="form-control">
		<c:forEach items="${otherStudents}" var="student" >
			<option value="${student.id}">${student.name}(${student.dorm.name})</option>

		</c:forEach>
    	<form:errors class ="text-danger" path="name"/>
    	</select>
		</div>
		<button class ="btn-primary">Add</button>
</form>
<table class="table table-striped">
<thead>
<tr>
<th>Student</th>

<th>Actions</th>
</tr>
</thead>
<c:forEach items="${dorm.students}" var="student">
	<tr>
		<td>${student.name}</td>
		<td><a href="/student/remove/${student.id}">Remove</a></td>
	</tr>	
	</c:forEach>
</table>
</body>
</html>