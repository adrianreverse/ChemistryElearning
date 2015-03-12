/**
 * counter of characters in message textarea
 */
$(function() {
	var maxLength = 10;

	$("#message-content").on('input', function() {
		var $this =$(this), length = $this.val().length, text, value = Math.abs(length - maxLength);

		if (length <= maxLength) {
			text = "pozostalo: ";
		} else if (length > maxLength) {
			text = "przekroczono o: ";
		}
		$(".counter-content").css('display', 'block');
		$(".counter-text").html(text);
		$(".counter-number").html(value);
	});
});
