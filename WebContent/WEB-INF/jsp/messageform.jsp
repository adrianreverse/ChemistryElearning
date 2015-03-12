<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${appTitle}</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/custom.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/keyboard.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/message.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/counter.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/mobile-device.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/keyboard.js"></script>
<script src="${pageContext.request.contextPath}/js/counter.js"></script>
<script src="${pageContext.request.contextPath}/js/message.js"></script>
<script src="${pageContext.request.contextPath}/js/js.js"></script>
</head>
<body class="body">
<div id="layout-region" class="container elearning-container">
	<%@ include file="navbar.jsp"%>
	<form id="new-message-form">
		<input id="message-title" name="message_title"
			placeholder="Temat wiadomości" class="form-control" type="text"
			maxlength="150" />
		<textarea id="message-content" name="message_content" rows="12"
			placeholder="Treść wiadomości..."></textarea>
	</form>

	<div class="counter-content">
		<span class="counter-text"></span><span class="counter-number"></span>
	</div>

	<button id="screen-keyboard">Klawiatura</button>

	<div id="screen-keyboard-region"></div>
</div>
</body>
</html>