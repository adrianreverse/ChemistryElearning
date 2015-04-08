/**
 * Validates title and content of message 
 */

$(function() {
	
	$('#new-message-form').validate({
		
		rules: {
			message_title : {
				required : true
			},
			
			message_content : {
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

