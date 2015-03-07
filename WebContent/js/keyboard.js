/**
 * Screen keyboard
 */

$(function() {
	var $write = $('#write'), shift = false, capslock = false;

	$('#keyboard li').click(function() {
		var $this = $(this), character = $this.html();

		if ($this.hasClass('left-shift') || $this.hasClass('right-shift')) {
			$('#keyboard .left-shift').toggleClass('active');
			$('#keyboard .right-shift').toggleClass('active');

			$('.letter').toggleClass('uppercase');
			$('.symbol span').toggle();

			shift = (shift === true) ? false : true;
			capslock = false;
			return false;
		}

		if ($this.hasClass('capslock')) {
			$this.toggleClass('active');
			$('.letter').toggleClass('uppercase');
			capslock = true;
			return false;
		}

		if ($this.hasClass('uppercase')) {
			character = character.toUpperCase();
		}

		if ($this.hasClass('delete')) {
			$write.val($write.val().substring(0, $write.val().length - 1));
			return false;
		}

		if ($this.hasClass('symbol')) {
			character = $('span:visible', $this).html();
		}
		if ($this.hasClass('space')) {
			character = ' ';
		}
		if ($this.hasClass('tab')) {
			character = "\t";
		}
		if ($this.hasClass('return')) {
			character = "\n";
		}

		if (shift === true) {
			$('.symbol span').toggle();
			if (capslock === false) {
				$('.letter').toggleClass('uppercase');
			}
			shift = false;
		}

		if (shift === false) {
			$('#keyboard .left-shift').removeClass('active');
			$('#keyboard .right-shift').removeClass('active');
		}

		$write.val($write.val() + character);

	});

	/**
	 * Injects and displays keyboard after clicking on screen keyboard button
	 */
	$('#screen-keyboard').click(function() {
		$.ajax({
			type : "GET",
			url : "keyboard",
			success : function(response) {
				$("#screen-keyboard-region").html(response);
			},
			error : function(error) {
				console.log(error);
			}
		});
	});
});
