/**
 * Profile module
 */

$(function() {

	/**
	 * Removes old view and inject personal form after clicking on edit personal
	 * button
	 */
	$('#edit-button-personaldata').click(
			function() {
				$.ajax({
					type : "GET",
					url : "account/edit/personaldata",
					success : function(html) {
						removeDataFromTile('#profile-user-personaldata',
								'#edit-button-personaldata');
						$('#js-personal-data-form-region').html(html);
					},
					error : function(error) {
						console.log(error);
					}
				});
			});

	/**
	 * Validates name and surname form on profile page in personal data module
	 */

	$('#js-personal-form').validate({
		rules : {
			name : {
				minlength : 2,
				maxlength : 50,
				required : true
			},
			surname : {
				minlength : 2,
				maxlength : 50,
				required : true
			}
		},

		highlight : function(element) {
			$(element).closest('.form-group').addClass('has-error');
		},
		unhighlight : function(element) {
			$(element).closest('.form-group').removeClass('has-error');
		},

		errorElement : 'span',
		errorClass : 'alert alert-error',
		errorPlacement : function(error, element) {
			$(error).addClass('form-alert');
			error.insertAfter(element);
		}
		
	});
	
	/**
	 * Removes old view and inject account form after clicking on edit account
	 * button
	 */
	$('#edit-button-accountdata').click(
			function() {
				$.ajax({
					type : "GET",
					url : "account/edit/accountdata",
					success : function(html) {
						removeDataFromTile('#profile-user-accountdata',
								'#edit-button-accountdata');
						$('#js-account-data-form-region').html(html);
					},
					error : function(error) {
						console.log(error);
					}
				});
			});

	/**
	 * Validates login form on profile page in account data module
	 */

	$('#js-account-form').validate({
		rules : {
			login : {
				minlength : 1,
				maxlength : 50,
				required : true,
				remote : {
					url : "account/edit/account/availableLogin",
					type : "GET",
					data : {
						userlogin : function() {
							return $("#login").val();
						}
					}
				}
			}
		},

		highlight : function(element) {
			$(element).closest('.form-group').addClass('has-error');
		},
		unhighlight : function(element) {
			$(element).closest('.form-group').removeClass('has-error');
		},

		errorElement : 'span',
		errorClass : 'alert alert-error',
		errorPlacement : function(error, element) {
			$(error).addClass('form-alert');
			error.insertAfter(element);
		},

		messages : {
			login : {
				remote : "Login is unavailable."
			}
		}
	});
	
	/**
	 * Removes old view and inject email form after clicking on edit email
	 * button
	 */
	$('#edit-button-emaildata').click(
			function() {
				$.ajax({
					type : "GET",
					url : "account/edit/emaildata",
					success : function(html) {
						removeDataFromTile('#profile-user-emaildata',
								'#edit-button-emaildata');
						$('#js-email-data-form-region').html(html);
					},
					error : function(error) {
						console.log(error);
					}
				});
			});

	/**
	 * Validates email form on profile page in email data module
	 */

	$('#js-email-form').validate({
		rules : {
			email : {
				minlength : 6,
				maxlength : 50,
				required : true,
				remote : {
					url : "account/edit/account/availableEmail",
					type : "GET",
					data : {
						userlogin : function() {
							return $("#email").val();
						}
					}
				}
			}
		},

		highlight : function(element) {
			$(element).closest('.form-group').addClass('has-error');
		},
		unhighlight : function(element) {
			$(element).closest('.form-group').removeClass('has-error');
		},

		errorElement : 'span',
		errorClass : 'alert alert-error',
		errorPlacement : function(error, element) {
			$(error).addClass('form-alert');
			error.insertAfter(element);
		},

		messages : {
			email : {
				remote : "Email is unavailable."
			}
		}
	});
	
	function removeDataFromTile(userData, editButton) {
		$(userData).remove();
		$(editButton).remove();
	}

});