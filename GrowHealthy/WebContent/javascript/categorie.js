$(document).on("click", "#Frutta", function() {
	$('#Frutta').blur(function() {
		$.ajax({
			url : 'productsForCategories',
			data : {
				category : $('#Frutta').val()
			},
			success : function(responseText) {
				$('#divFrutta').text(responseText);
			}
		});
	});
});

$(document).ready(function() {
	$("#Frutta").click(function() {
		$("#divFrutta").show("slow");
		$("#divVerdura").hide("slow");
		$("#divLegumi").hide("slow");
		$("#divTuberi").hide("slow");

	})

})

$(document).ready(function() {
	$("#Verdura").click(function() {
		$("#divFrutta").hide("slow");
		$("#divVerdura").show("slow");
		$("#divLegumi").hide("slow");
		$("#divTuberi").hide("slow");

	})

})

$(document).ready(function() {
	$("#Legumi").click(function() {
		$("#divFrutta").hide("slow");
		$("#divVerdura").hide("slow");
		$("#divLegumi").show("slow");
		$("#divTuberi").hide("slow");

	})

})

$(document).ready(function() {
	$("#Tuberi").click(function() {
		$("#divFrutta").hide("slow");
		$("#divVerdura").hide("slow");
		$("#divLegumi").hide("slow");
		$("#divTuberi").show("slow");

	})

})