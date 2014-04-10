$('document').ready(function() {

	$( '.menu1' ).click(function() {
		$( '.menu2, .menu3' ).hide( 'slow' )
		$( '.questionnaire1, #retour' ).show( 'slow' )
	});

	$( '.menu2' ).click(function() {
		$( '.menu1, .menu3' ).hide( 'slow' )
		$( '.questionnaire2, #retour' ).show( 'slow' )
	});

	$( '.hall1' ).click(function() {
		$( '#hall1-bis' ).show( 'slow' )
		$( '#hall2-bis, .questionnaire2, .menu2' ).hide( 'slow' )
	});

	$( '.hall2' ).click(function() {
		$( '#hall2-bis' ).show( 'slow' )
		$( '#hall1-bis, .questionnaire2, .menu2' ).hide( 'slow' )
	});

	$( '.menu3' ).click(function() {
		$( '.menu1, .menu2' ).hide( 'slow' )
		$( '.questionnaire3, #retour' ).show( 'slow' )
	});

	$( '.passage' ).click(function() {
		$( '.passage_bis' ).show( 'slow' )
		$( '.collectif, .menu3').hide( 'slow' )
	});

	$( '.collectif' ).click(function() {
		$( '.passage, .menu3' ).hide( 'slow' )
		$( '#collectif' ).show( 'slow' )
	});

	$( '.poubelle' ).click(function() {
		$( '#foot, #enfant' ).hide( 'slow' )
		$( '#poubelle' ).show( 'slow' )
	});
	$( '.foot' ).click(function() {
		$( '#poubelle, #enfant' ).hide( 'slow' )
		$( '#foot' ).show( 'slow' )
	});
	$( '.enfant' ).click(function() {
		$( '#poubelle, #foot' ).hide( 'slow' )
		$( '#enfant' ).show( 'slow' )
	});


	$('#voie').change(function(){
		$.get('/appartements', {voie: $(this).val()}, function(data) {
			console.log(data)
			if($('#numero')) {
				$('#numero').remove()
			}
			
			$('#voie').after(data)
		})
	})

	$('#voie1').change(function(){
		$.get('/interieurs1', {voie1: $(this).val()}, function(data) {
			console.log(data)
			if($('#numero')) {
				$('#numero').remove()
			}
			
			$('#voie1').after(data)
		})
	})

	$('#voie2').change(function(){
		$.get('/interieurs2', {voie2: $(this).val()}, function(data) {
			console.log(data)
			if($('#numero')) {
				$('#numero').remove()
			}
			
			$('#voie2').after(data)
		})
	})

	$('#voie3').change(function(){
		$.get('/exterieurs1', {voie3: $(this).val()}, function(data) {
			console.log(data)
			if($('#numero')) {
				$('#numero').remove()
			}
			
			$('#voie3').after(data)
		})
	})

	$('#voie4').change(function(){
		$.get('/exterieurs2', {voie4: $(this).val()}, function(data) {
			console.log(data)
			if($('#numero')) {
				$('#numero').remove()
			}
			
			$('#voie4').after(data)
		})
	})

});