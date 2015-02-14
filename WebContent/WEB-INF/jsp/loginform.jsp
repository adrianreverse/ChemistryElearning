<div id="login-form">
	<form class="form-horizontal" id="js-login-form" role="form"
		method="POST" action="${postLoginUrl}">
		<div class="form-group">
			<label class="control-label col-sm-4" for="email">${loginLabel}</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="login-form-login"
					name="j_username" placeholder="${loginPlaceholder}" />
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-4" for="pwd">${passwordLabel}</label>
			<div class="col-sm-5">
				<input type="password" class="form-control" id="login-form-password"
					name="j_password" placeholder="${passwordPlaceholder}" />
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-4 col-sm-3">
				<div class="checkbox">
					<label><input type="checkbox"
						name="_spring_security_remember_me">${rememberMe}</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-4 col-sm-3">
				<button type="submit" id="login-form-button" class="btn btn-success">${submitButton}</button>
			</div>
		</div>
	</form>
</div>