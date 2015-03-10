/**
 * Screen keyboard
 */

$(function() {
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

	var $text = $('#message-content'), shift = false, capslock = false, altctrl=false;

	$('#keyboard li').click(function() {
		var $this = $(this), character = $this.html();

		if ($this.hasClass('shift')) {
			$('#keyboard .shift').toggleClass('active');
			$('.letter').toggleClass('uppercase');
			
			if(altctrl === false) {
				$('.character span').toggle();
			}
			
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
		
		if ($this.hasClass('alt-ctrl')) {
			$('#keyboard .alt-ctrl').toggleClass('active');
			$('.letter span').toggle();
			altctrl = (altctrl === true) ? false : true;
			
			if(altctrl === true) {
				$('.character span').css("display", "none");
			}
			else{
				if(shift === true) {
					$('.character span.on').css("display", "inline");
				}
				else {
					$('.character span.off').css("display", "inline");
				}
			}
			return false;
		}

		if ($this.hasClass('uppercase')) {
			character = character.toUpperCase();
		}

		if ($this.hasClass('backspace')) {
			$text.val($text.val().substring(0, $text.val().length - 1));
			$text.trigger("input");
			return false;
		}

		if ($this.hasClass('character')) {
			character = $('span:visible', $this).html();
		}
		if ($this.hasClass('space')) {
			character = ' ';
		}
		if ($this.hasClass('tab')) {
			character = "\t";
		}
		if ($this.hasClass('enter')) {
			character = "\n";
		}

		if (shift === true) {			
			if(altctrl === false) {
				$('.character span').toggle();
			}
			
			$('.letter').toggleClass('uppercase');
			shift = false;
		}
		
		if (shift === false) {
			$('#keyboard .shift').removeClass('active');
		}
		
		$text.val($text.val() + character);
		$text.trigger("input");

	});

});
