<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Diz cu may</title>
</head>
<body>

	<c:if test="1=1">
		<h2>Login failed</h2>
	</c:if>

<c:out value=""/>
	<form:form method="POST" modelAttribute="fresher" action="dashboard">
		<table>
			<tr>
				<td><form:label path="username">Username</form:label></td>
				<td><form:input path="username" /></td>
			</tr>

			<tr>
				<td><form:label path="password">Password</form:label></td>
				<td><form:input path="password" name="password" /></td>
			</tr>
			<tr>
				<td><form:button name="login" id="login">Login</form:button></td>
			</tr>
		</table>
	</form:form>
</body>
</html>