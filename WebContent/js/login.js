/**
 * Module to open login modal and validate login form
 */

$(function() {

	/**
	 * Injects and open modal after clicking on sign in button
	 */
	$('#signIn').click(function() {
		$.ajax({
			type : "GET",
			url : "login",
			success : function(response) {
				$("#login-form-region").html(response);
				$("#modal-login-window").modal("show");
			},
			error : function(error) {
				console.log(error);
			}
		});
	});

	/**
	 * Validates login form on modal and login failed page
	 */
	$('#js-login-form').validate({
		rules : {
			j_username : {
				minlength : 1,
				required : true
			},
			j_password : {
				minlength : 1,
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

});