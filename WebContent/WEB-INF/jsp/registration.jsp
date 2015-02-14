<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ include file="messages.jsp" %>

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
  	<script src="${pageContext.request.contextPath}/js/js.js"></script>
</head>
<body>


<div class="modal fade" id="modal-registration-window" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        	<span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title">${signUp}</h4>
      </div>
      <div class="modal-body">
		<div id="registration-form"> 
		  	<form:form class="form-horizontal" id="js-register-form" role="form" method="POST" action="/ChemistryElearning/registerUser" modelAttribute="account">
			  <div class="form-group">
			    <label class="control-label col-sm-4" for="name">${nameLabel}</label>
			    <div class="col-sm-5">
			      <form:input type="text" class="form-control" path="name" id="name" placeholder="${namePlaceholder}" />
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="control-label col-sm-4" for="surname">${surnameLabel}</label>
			    <div class="col-sm-5">
			      <form:input type="text" class="form-control" path="surname" id="surname" placeholder="${surnamePlaceholder}" />
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="control-label col-sm-4" for="login">${loginLabel}</label>
			    <div class="col-sm-5">
			      <form:input type="text" class="form-control" path="login" id="login" placeholder="${loginPlaceholder}" />
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="control-label col-sm-4" for="email">${emailLabel}</label>
			    <div class="col-sm-5">
			      <form:input type="email" class="form-control" path="email" id="email" placeholder="${emailPlaceholder}" />
			    </div>
			  </div>
			  <div class="form-group">
			  <label class="control-label col-sm-4" for="password">${passwordLabel}</label>
			    <div class="col-sm-5"> 
			      <form:input type="password" class="form-control" path="password" id="password" placeholder="${passwordPlaceholder}" />
			    </div>
			  </div>
			  <div class="form-group">
			  <label class="control-label col-sm-4" for="passwordConfirmation">${passwordConfirmationLabel}</label>
			    <div class="col-sm-5"> 
			      <form:input type="password" class="form-control" path="passwordConfirmation" id="passwordConfirmation" placeholder="${passwordConfirmationPlaceholder}" />
			    </div>
			  </div>
			  <div class="form-group">  
			    <div class="col-sm-offset-4 col-sm-3">
			      <button type="submit" class="btn btn-success">${submitButton}</button>
			    </div>
			  </div>
			</form:form>
		</div>	
      </div>
    </div>
  </div>
</div>

</body>
</html>