
$(document).ready(function(){

	//$('h2').css('color','red');
	// $('h2').addClass('emphasized');

	//$('#comments-form input[type=text]').focus();

	//$('#comments-form input[type=text]').on('click', deleteText);
	$('input[type=text], textarea').click(
	function(){

		$(this).val('');

	}

		);

});

//function deleteText() {
//	$('#comments-form input[type=text]').val('');
//}