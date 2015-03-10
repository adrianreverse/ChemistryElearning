/**
 * counter of characters in message textarea
 */
$(function(){
var maxLength = 10;
    
    $( "#message-content" ).on('input', function() {
      var length = $(this).val().length; 
        console.log(length);
        
        if(length === maxLength) {
         console.log("pozostalolo" , 0);
        }
        
        else if(length > maxLength) {
            console.log("przekroczono o " , (length-maxLength));
        }
    });
	
	
});