/**
 * counter of characters in message textarea
 */
$(function(){
var maxLength = 10;
    
    $( "#write" ).keyup(function() {
      var length = $(this).val().length; 
        console.log(length);
        
        if(length === maxLength) {
         console.log("pozostalolo" , 0);
        }
        
        else if(length > maxLength) {
            console.log("przekrocozno o " , (length-maxLength));
        }
    });
	
	
});