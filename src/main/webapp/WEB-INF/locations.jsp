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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Locations of ${DojoToShow.name }  <button><a href="/">To Home</a></button></h1>

    <table class="table">
    	<tr class ="bg-dark text-light"> 
    	<th>First Name</th>
    	<th>Last Name</th>
    	<th>Age</th>
    	
		<c:forEach items="${DojoToShow.ninjas }" var="x">
        <tr>
            <td><c:out value="${x.firstName}"/></td>
            <td><c:out value="${x.lastName}"/></td>
            <td><c:out value="${x.age}"/></td>
        </tr>
    </c:forEach>




    </table>
</body>
</html>