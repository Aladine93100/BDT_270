$('document').ready(function() {

	$( '.menu1' ).click(function() {
	 $( '.menu2, .menu3' ).hide( 'slow' )
	 $( '.questionnaire1, #retour' ).show( 'slow' )
	});

	$( '.menu2' ).click(function() {
	 $( '.menu1, .menu3' ).hide( 'slow' )
	 $( '.questionnaire2, #retour' ).show( 'slow' )
	});

	$( '.menu3' ).click(function() {
	 $( '.menu1, .menu2' ).hide( 'slow' )
	 $( '.questionnaire3, #retour' ).show( 'slow' )
	});

	$( '.passage' ).click(function() {
		$( '#passage' ).show( 'slow' )
	});

	$( '.collectif' ).click(function() {
		$( '#collectif' ).show( 'slow' )	
	});
	$( '.poubelle' ).click(function() {
		$( '#poubelle' ).show( 'slow' )
	});

	$('#voie').change(function(){
		$.get('/adresses', {voie: $(this).val()}, function(data) {
			console.log(data)
			if($('#numero')) {
				$('#numero').remove()
			}
			
			$('#voie').after(data)
		})
	})
});