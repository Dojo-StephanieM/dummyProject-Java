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
        <title>Dorm Form</title>
</head>
<body>
<h1>New Dorm</h1>
<form:form action="/dorm/new" method="POST" modelAttribute="newDorm">
<div class = "form-group">
		<form:label path="dorm">Name:</form:label>
    	<form:input path="dorm" class="form-control"/>
    	<form:errors class ="text-danger" path="dorm"/>
		</div>
		
		<button class ="btn-primary">Add </button>
</form:form>
</body>
</html>