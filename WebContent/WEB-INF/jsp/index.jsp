<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<%@ include file="messages.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>${appTitle}</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mobile-device.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/message.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/alerts.js"></script>
	<script src="${pageContext.request.contextPath}/js/registration.js"></script>
		<script src="${pageContext.request.contextPath}/js/login.js"></script>

</head>
<body class="body">

	<div id="layout-region" class="container elearning-container">

		<%@ include file="navbar.jsp"%>

		<div id="main-region">
			<div class="columns-container home">
				<div class="row info">
					<div class="col-sm-10 col-sm-push-1">
						<!-- Tutaj ma byc info o apce -->
					</div>
				</div>

				<div class="row mode row-centered">
					<div class="col-centered">
						<img src="img/laboratory.png" class="img-thumbnail mode-images">
						<a class="btn btn-success learn acitve" href="#learn">${learnButton}</a>
					</div>
					<div class="col-centered">
						<security:authorize access="isAuthenticated()">
							<img src="img/laboratory.png" class="img-thumbnail mode-images">
							<a class="btn btn-primary sample-test" href="#test">${sampleTestButton}</a>
						</security:authorize>
						<security:authorize access="isAnonymous()">
							<img src="img/laboratory.png"
								class="img-thumbnail mode-images ce-disabled">
							<a class="btn btn-primary sample-test ce-disabled" href="${pageContext.request.contextPath}/account">${sampleTestButton}</a>
						</security:authorize>
					</div>
					<div class="col-centered">
						<security:authorize access="isAuthenticated()">
							<img src="img/laboratory.png" class="img-thumbnail mode-images">
							<a class="btn btn-default exam" href="#exam">${examButton}</a>
						</security:authorize>
						<security:authorize access="isAnonymous()">
							<img src="img/laboratory.png"
								class="img-thumbnail mode-images ce-disabled">
							<a class="btn btn-default exam ce-disabled" href="#exam">${examButton}</a>
						</security:authorize>
					</div>
				</div>

				<security:authorize access="isAnonymous()">
					<div id="login-form-region"></div>
					<div id="registration-form-region"></div>
				</security:authorize>

			</div>

		</div>


	 	<%@ include file="footer.jsp"%> 

	</div>

</body>
</html>