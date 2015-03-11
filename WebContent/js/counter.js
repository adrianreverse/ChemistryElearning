/**
 * counter of characters in message textarea
 */
$(function() {
	var maxLength = 10;

	$("#message-content").on('input', function() {
		var $this = $(this), length = $this.val().length, text, value;

		if (length === maxLength) {
			text = "pozostalo: ";
			value = 0;
		} else if (length > maxLength) {
			text = "przekroczono o: ";
			value = length - maxLength;
		} else if (length < maxLength) {
			$(".counter-content").css('display', 'none');
		}

		if (text !== undefined && value !== undefined) {
			$(".counter-content").css('display', 'block');
			$(".counter-text").html(text);
			$(".counter-number").html(value);
		}
	});
});
