/**
 * Module to open registration modal and validate registration form
 */

$(function() {
	$('#signUp').click(function() {
		$.ajax({
			type : "GET",
			url : "register",
			success : function(response) {
				$("#registration-form-region").html(response);
				$("#modal-registration-window").modal("show");
			},
			error : function(error) {
				console.log(error);
			}
		});
	});
});

$(function() {
	$('#js-register-form').validate({
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
			},
			login : {
				minlength : 1,
				maxlength : 50,
				required : true,
				remote : {
					url : "availableLogin",
					type : "GET",
					data : {
						userlogin : function() {
							return $("#login").val();
						}
					}
				}
			},
			email : {
				minlength : 6,
				maxlength : 50,
				required : true,
				remote : {
					url : "availableEmail",
					type : "GET",
					data : {
						useremail : function() {
							return $("#email").val();
						}
					}
				}
			},
			password : {
				minlength : 6,
				maxlength : 50,
				required : true
			},
			passwordConfirmation : {
				minlength : 6,
				maxlength : 50,
				equalTo : "#password",
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
		},

		messages : {
			login : {
				remote : "Login is unavailable."
			},
			email : {
				remote : "Email is unavailable."
			}
		}
	});
});