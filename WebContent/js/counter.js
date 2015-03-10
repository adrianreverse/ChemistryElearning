/**
 * counter of characters in message textarea
 */
$(function(){
	var maxLength = 10;
    
    $("#message-content").on('input', function() {
      var $this = $(this), length = $this.val().length; 
        console.log(length);
      //nalzey zmienic na operowanie widocznoscia a nie tak jak jest teraz.
        $(".counter-content").remove();
        
        if(length === maxLength) {
        	$(content("pozostalo: ", 0)).insertAfter($this);
        }
        else if(length > maxLength) {
        	$(content("przekroczono o: ", length-maxLength)).insertAfter($this);
        }
    });

});

function content(text, value) {
	return "<div class='counter-content'><span>"+text+"</span><span>"+value+"</span></div>";
}