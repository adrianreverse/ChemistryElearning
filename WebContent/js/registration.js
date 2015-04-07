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
				validateRegistrationForm();
				sendRegistrationFormData();
			},
			error : function(error) {
				console.log(error);
			}
		});
	});
});

function validateRegistrationForm() {
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
}

function sendRegistrationFormData() {	
	$('#js-register-form').submit(function(e) {
		
		var name,
			surname,
			login,
			email,
			password,
			passwordConfirmation, 
			data;
		
		name = $('#name').val();
	    surname = $('#surname').val();
	    login = $('#login').val();
	    email = $('#email').val();
	    password = $('#password').val();
	    passwordConfirmation = $('#passwordConfirmation').val();
	    data = { "name" : name, "surname" : surname, "login" : login, "email" : email, "password" : password, "passwordConfirmation" : passwordConfirmation};
				     
	    $.ajax({
			type: 'POST',
			url:  $(this).attr('action'),
			data: JSON.stringify(data),
			contentType: 'application/json',
			dataType: 'json',
				          
			success: function(response, status, xhr) {
				 	if(response.status=='ok') {
				 		$('#modal-registration-window').hide();
				 		setAlert("success", "Account was created");
					} else {
					    alert('nie udalo sie utworzyc uzytkownika' + ',' + response.status + ',' + response.errorMessage);
					 }
			},
			error: function(response) {
				    console.log(response);				    		
			}
		});
	    
		e.preventDefault();
	});

}