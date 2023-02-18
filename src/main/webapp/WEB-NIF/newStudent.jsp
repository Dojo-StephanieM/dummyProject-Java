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
        <title>Demo JSP</title>
</head>
<body>
<form:form action="/student/create" method="POST" modelAttribute="newStudent">
<div class = "form-group">
		<form:label path="name">Name:</form:label>
    	<form:input path="name" class="form-control"/>
    	<form:errors class ="text-danger" path="name"/>
		</div>
		
		<div class = "form-group">
		<form:label path="dorm">Dorm:</form:label>
    	<form:select path="dorm" class="form-control">
			<c:forEach items="${dorms}" var="dorm">
			<option value="${dorm.id}">${dorm.name}</option>
			</c:forEach>
    	<form:errors class ="text-danger" path="dorm"/>
    	</form:select>
		</div>
		<button class ="btn-primary">Add</button>
</form:form>
</body>
</html>