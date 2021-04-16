<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dojo create</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container">
  	<div class="jumpbotron">
    <h1>Hello dojoform!</h1>
    	<div class="row">
    		<form:form action="/dojo/new" method="post" modelAttribute="aDojo">
    			<div class="form-group">
    			<label>Dojo Name:</label>
    			<form:input path="name" class="form-control"/>
    			<form:errors path="name" class="text-danger"/>
    			
    			</div>
    			<input type="submit" value="Create" class="btn btn-primary"/>
    		</form:form>
    	</div>
  	</div>
  </div>
</body>
</html>