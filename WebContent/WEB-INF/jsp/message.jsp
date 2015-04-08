<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
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
		
		<div id="main-region">
			<section class="message-container">
				<header class="row">
					<div class="col-xs-12">
						<div class="sub-header">
							<div class="cell left-cell">
								<h1>Wiadomości</h1>
							</div>
							<div class="cell right-cell">
								<a href="messages/new" id="new-message-button" class="btn btn-primary">
									<span>Wiadomość</span>
								</a>
							</div>
						</div>
					</div>
				</header>
				<div class="row">
					<div class="col-xs-12">
						<div class="msg-list">
							<article class="msg-list-elem">
								<div class="msg-elem-title">
									<h3>lsjdkhbcvasjdvbhj</h3>
								</div>
								<div class="msg-elem-message">
								
								</div>
							</article>
						</div>
					</div>
				</div>
			</section>
		</div>
		
		<%@ include file="footer.jsp"%> 
</div>
</body>
</html>