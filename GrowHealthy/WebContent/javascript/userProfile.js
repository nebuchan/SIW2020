$(document).ready(function() {
	$("#myData").click(function() {
		$("#divMyData").show("slow");
		$("#divMyData1").hide("slow");
	})
});

$(document).ready(function() {
	$("#myData1").click(function() {
		$("#divMyData").hide("slow");
		$("#divMyData1").show("slow");
	})
});
