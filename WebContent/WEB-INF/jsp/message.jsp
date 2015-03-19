<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>${appTitle}</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/message.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mobile-device.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/message.js"></script>
	<script src="${pageContext.request.contextPath}/js/js.js"></script>
</head>
<body class="body">
	<div id="layout-region" class="container elearning-container">
		<%@ include file="navbar.jsp"%>
		<a href="messages/new" id="new-message-button"><span>message</span></a>
		<%@ include file="footer.jsp"%> 
</div>
</body>
</html>