<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="messages.jsp"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>${appTitle}</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mobile-device.css"/>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/profile.js"></script>
	</head>
	<body class="body">

<form:form id="js-email-form" role="form" method="POST" modelAttribute="editEmailData"
	action="/ChemistryElearning/account/edit/emaildata">
	<div class="form-group">
		<label for="email">${emailLabel}</label>
		<form:input type="email" class="form-control" path="email" id="email"
			placeholder="${emailPlaceholder}" />
	</div>
	<div class="form-group">
		<button type="submit" class="btn btn-success">${submitButton}</button>
	</div>
</form:form>

	</body>
</html>
