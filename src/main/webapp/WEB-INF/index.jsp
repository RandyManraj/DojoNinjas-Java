<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dojo and Ninjas</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container">
  	<div class="jumpbotron">
    <h1>Information</h1>
    
    <table class="table">
    	<tr class ="bg-dark text-light"> 
    	<th>Dojo Name</th>
    	<th>Ninja Count</th>
    	</tr>
    	<c:forEach items="${allDojos }" var="dojo">
    	<tr> 
    	<td><a href="/dojos/${dojo.id}">${dojo.name}</a></td>
    	<td>${fn:length(dojo.ninjas)}</td>
    	</tr>
    	</c:forEach>
    </table>
    <button><a href="/ninja/new">New Ninja</a></button>
    <button><a href="/dojo/new">New Dojo</a></button>
  	</div>
  </div>
</body>
</html>