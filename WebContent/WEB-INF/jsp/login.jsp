<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<%@ include file="messages.jsp" %>
<c:url var="postLoginUrl" value="/j_spring_security_check" />

<!DOCTYPE html>
<html>
<head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>${appTitle}</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"/>
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css"/>
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mobile-device.css"/>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
  	<script src="${pageContext.request.contextPath}/js/login.js"></script>
</head>
<body>

<div class="modal fade" id="modal-login-window" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        	<span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title">${signIn}</h4>
      </div>
      <div class="modal-body">
		<%@ include file="loginform.jsp"%>
      </div>
    </div>
  </div>
</div>

</body>
</html>