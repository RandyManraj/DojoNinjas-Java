<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container">
  	<div class="jumpbotron">
    <h1>Hello Ninja Form!</h1>
    	<div class="row">
    		<form:form action="/ninja/new" method="post" modelAttribute="aNinja">
    			<div class="form-group">
    			<label>Ninja First Name:</label>
    			<form:input path="firstName" class="form-control"/>
    			<form:errors path="firstName" class="text-danger"/>
    			
    			<label>Ninja Last Name:</label>
    			<form:input path="lastName" class="form-control"/>
    			<form:errors path="lastName" class="text-danger"/>
    			
    			<label>Ninja Age:</label>
    			<form:input path="age" class="form-control"/>
    			<form:errors path="age" class="text-danger"/>
    			
    			<label>Dojo:</label>
    			<select name="dojo" class="form-control">
    			<c:forEach items="${ allDojos }" var="d">
    			<option value="${d.id }">${ d.name}</option>
    			 </c:forEach>
    			</select>
    			</div>
    			<input type="submit" value="Create" class="btn btn-primary"/>
    		</form:form>
    	</div>
  	</div>
  </div>
</body>
</html>