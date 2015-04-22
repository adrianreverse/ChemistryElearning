<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="messages.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${appTitle}</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/custom.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/mobile-device.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/profile.js"></script>
</head>
<body class="body">
	<div id="layout-region" class="container elearning-container">

		<%@ include file="navbar.jsp"%>

		<div id="main-region">
			<div id="panel-edytuj-admina" class="panel">
				<h3 class="tytul-tabeli">Edit profile</h3>
				<form:form method="post"
					action="${pageContext.request.contextPath}/account/edit"
					modelAttribute="editUserProfile" class="admin">
					<table class="form">
						<tr>
							<td><form:label path="login">Login:</form:label></td>
							<td><form:input path="login" class="input-panel"
									placeholder="Enter login" /></td>
							<td><form:label path="email">Email:</form:label></td>
							<td><form:input path="email" class="input-panel"
									placeholder="Enter email" /></td>
							<td><label>Current password:</label></td>
							<td><input class="input-panel"
								placeholder="Enter current 

password" /></td>
							<td><form:label path="password">New 

password:</form:label></td>
							<td><form:input type="password" path="password"
									class="input-panel" value="" placeholder="Enter new password" /></td>
							<td><form:label path="passwordConfirmation">Confirm new 

password:</form:label></td>
							<td><form:input type="password" path="passwordConfirmation"
									class="input-panel" placeholder="Confirm new password" /></td>
						</tr>
						<tr>
							<td></td>
							<td colspan="3"><input type="button" value="Cancel"
								class="cancel-panel" id="cancel-edit-admin" /> <input
								type="submit" value="Edit" class="submit-panel" /></td>
						</tr>
					</table>
				</form:form>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>

</body>
</html>