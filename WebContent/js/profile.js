/**
 * Profile module
 */

$(function() {

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

});