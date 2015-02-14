$(function() {
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
});

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

$(function() {
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

// $(function() {
// $('#e').click(function() {
// $.getJSON('account/edit/personaldata', {
// ajax : 'true'
// }, function(data) {
// var html = data;
// // '<option value="">State</option>';
// // var len = data.length;
// // for (var i = 0; i < len; i++) {
// // html += '<option value="' + data[i].name + '">'
// // + data[i].name + '</option>';
// // }
// // html += '</option>';
// // now that we have our options, give them to our select
// $('#usStates').html(html);
// });
// });
// });

// $(function() {
// $('#e').click(function() {
// $.getJSON('account/edit/personaldata', {
// ajax : 'true'
// }, function(data) {
// var html = data;
// // '<option value="">State</option>';
// // var len = data.length;
// // for (var i = 0; i < len; i++) {
// // html += '<option value="' + data[i].name + '">'
// // + data[i].name + '</option>';
// // }
// // html += '</option>';
// // now that we have our options, give them to our select
// $('#usStates').html(html);
// });
// });
// });

$(function() {
	$('#edit-button-personaldata').click(function() {
		$.ajax({
			type : "GET",
			url : "account/edit/personaldata",
			success : function(html) {
				removeDataFromTile('#profile-user-personaldata', '#edit-button-personaldata');
				$('#js-personal-data-form').html(html);
				//$('.user-account-data').children().off('click');
				//$(".user-account-data").attr("disabled","disabled");
				//$(".user-account-data").children().prop('disabled',true);
				//$('.user-account-data').first().removeClass('disabled');
			},
			error : function(error) {
				console.log(error);
			}
		});
	});
});

$(function() {
	$('#edit-button-accountdata').click(function() {
		$.ajax({
			type : "GET",
			url : "account/edit/accountdata",
			success : function(html) {
				removeDataFromTile('#profile-user-accountdata', '#edit-button-accountdata');
				$('#js-account-data-form').html(html);
			},
			error : function(error) {
				console.log(error);
			}
		});
	});
});

$(function() {
	$('#edit-button-emaildata').click(function() {
		$.ajax({
			type : "GET",
			url : "account/edit/emaildata",
			success : function(html) {
				removeDataFromTile('#profile-user-emaildata', '#edit-button-emaildata');
				$('#js-email-data-form').html(html);
			},
			error : function(error) {
				console.log(error);
			}
		});
	});
});

$(function() {
	$('#edit-button-safetydata').click(function() {
		$.ajax({
			type : "GET",
			url : "account/edit/safetydata",
			success : function(html) {
				$('#edit-safetydata-form').html(html);
			},
			error : function(error) {
				console.log(error);
			}
		});
	});
});

$(function() {
	$('#edit-button-systemdata').click(function() {
		$.ajax({
			type : "GET",
			url : "account/edit/systemdata",
			success : function(html) {
				$('#edit-systemdata-form').html(html);
			},
			error : function(error) {
				console.log(error);
			}
		});
	});
});


function removeDataFromTile(userData, editButton) {
	$(userData).remove();
	$(editButton).remove();
} //aaa