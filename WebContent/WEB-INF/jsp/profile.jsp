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
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mobile-device.css"/>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/js.js"></script>
	</head>
	<body class="body">
	
		<div id="layout-region" class="container elearning-container">

		<%@ include file="navbar.jsp"%>

		<div id="main-region">
			<div class="columns-container home">
				<div class="row user-account-data-container">
					<div class="col-lg-4 col-sm-12 user-account-data">
						<div class="tile">
							<h3 class="tile-title">Dane osobowe</h3>
							<p id="profile-user-personaldata">${userProfile.name} ${userProfile.surname}</p>
							<input type="button" id="edit-button-personaldata" class="btn btn-link dotted-link" value="edit"/>
							<div id="js-personal-data-form"></div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-12 user-account-data">
						<div class="tile">
							<h3 class="tile-title">Dane konta</h3>
							<p id="profile-user-accountdata">${userProfile.login}</p>
							<input type="button" id="edit-button-accountdata" class="btn btn-link dotted-link" value="edit"/>
							<div id="js-account-data-form"></div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-12 user-account-data">
						<div class="tile">
							<h3 class="tile-title">Dane kontaktowe</h3>
							<p id="profile-user-emaildata">${userProfile.email}</p>
							<input type="button" id="edit-button-emaildata" class="btn btn-link dotted-link" value="edit"/>
							<div id="js-email-data-form"></div>
						</div>	
					</div>
				</div>

				<div class="row settings-data-container">
					<div class="col-lg-4 col-sm-12 user-account-data">
						<div class="tile">
							<h3 class="tile-title">Bezpieczeństwo</h3>
							<input type="button" id="edit-button-safetydata" class="btn btn-link dotted-link" value="edit"/>
							<div id="js-safety-data-form"></div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-12 user-account-data">
						<div class="tile">
							<h3 class="tile-title">Rejestr operacji</h3>
							<a class="dotted-link" href="${pageContext.request.contextPath}/account/edit">more</a>
						</div>
					</div>
					<div class="col-lg-4 col-sm-12 user-account-data">
						<div class="tile">
							<h3 class="tile-title">System</h3>
							<input type="button" id="edit-button-systemdata" class="btn btn-link dotted-link" value="edit"/>
						</div>
						<div id="edit-systemdata-form"></div>
					</div>
				</div>
			</div>
			
									<!--<td><a href="<c:url value='/account/edit' />"> edit -->
							<!--  <img class="icon" src="<c:url value='/resources/images/edit.png' />"
									title="Edit Student" /> -->
							<a href="account/edit">edit</a>
		</div>

		<%@ include file="footer.jsp"%>

	</div>

	</body>
</html>