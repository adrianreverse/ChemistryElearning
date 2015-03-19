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

		<div class="new-message-page-title">Nowa wiadomość</div>
		<div class="message-form">
			<form id="new-message-form" role="form" method="POST">
				<div class="form-group">
					<input id="message-title" name="message_title" class="form-control"
						placeholder="Temat wiadomości" class="form-control" type="text"
						maxlength="150" />
				</div>
				<div class="form-group counter-message-content">
					<textarea id="message-content" name="message_content" rows="10"
						class="form-control" placeholder="Treść wiadomości..."></textarea>
					<div class="counter-content">
						<div class="counter-elements">
							<span class="counter-text"></span><span class="counter-number"></span>
						</div>
					</div>
				</div>
				<div class="pull-right btn-toolbar">
					<div class="btn-group" role="group">
						<button type="submit" id="cancel-new-message-form-button"
							class="btn btn-default">Anuluj</button>
					</div>
					<div class="btn-group" role="group">
						<button type="submit" id="send-new-message-form-button"
							class="btn btn-success">Wyślij</button>
					</div>
				</div>
			</form>
		</div>

		<div class="screen-keyboard-btn">
			<div class="screen-keyboard-btn-element">
				<button id="open-screen-keyboard" class="btn btn-primary">Klawiatura</button>
			</div>
		</div>

		<div class="horizontal-line"></div>

		<div id="screen-keyboard-region"></div>

		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>