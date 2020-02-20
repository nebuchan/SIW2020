$(document).ready(function() {
	$("#myData").click(function() {
		$("#divMyData").show("slow");
		$("#divMyData1").hide("slow");
		$("#divMyData2").hide("slow");
	})
});

$(document).ready(function() {
	$("#myData1").click(function() {
		$("#divMyData").hide("slow");
		$("#divMyData1").show("slow");
		$("#divMyData2").hide("slow");
	})
});

$(document).ready(function() {
	$("#myData2").click(function() {
		$("#divMyData").hide("slow");
		$("#divMyData1").hide("slow");
		$("#divMyData2").show("slow");
		
		$("#tableMyData2 tbody").empty();
		
		$.ajax({
			url: "clientPurchases",
			type: "post",
			success: function(res) {
				
				var acquisti = JSON.parse(res);
				
				var cod = 0;
				var cont = 0;
				
				for(var i = 0; i < acquisti.length; i++){
					
					if(cod == 0 && cont == 0 ){
						cont=cont + 1;
						
						var $acquistoTr = (
								"<tr>"
									+ "<td class='text-center'>"+acquisti[i].codice+"</td>"
									+ "<td class='text-center'> <div id='divProducts'></div></td>"
									+ "<td class='text-center'>"+acquisti[i].data+"</td>"
									+ "<td class='text-center'>€ "+acquisti[i].totale+"</td>"
								+ "</tr>")
								
						
						$("#tableMyData2 tbody").append($acquistoTr);
						
						for(var j = 0; j < acquisti.length; j++){
							if(acquisti[i].codice == acquisti[j].codice){
								var $product = ("<h4>"+acquisti[j].prodotto+"</h4>")
							}
							$("#divProducts").append($product);
						}		
					}
					
					else if(cod != acquisti[i].codice){
						cod = acquisti[i].codice;
						var $acquistoTr = (
								"<tr>"
									+ "<td class='text-center'>"+acquisti[i].codice+"</td>"
									+ "<td class='text-center'><div id='divProducts'></div></td>"
									+ "<td class='text-center'>"+acquisti[i].data+"</td>"
									+ "<td class='text-center'>€ "+acquisti[i].totale+"</td>"
								+ "</tr>")
						
						$("#tableMyData2 tbody").append($acquistoTr);
						
						for(var j = 0; j < acquisti.length; j++){
							if(acquisti[i].codice == acquisti[j].codice){
								var $product = ("<h4>"+acquisti[j].prodotto+"</h4>")
							}
							$("#divProducts").append($product);
						}
					}
				}
			}
		});
		
	});
});

$(document).ready(function() {
	$("form#formDeliveryData :input").change(function() {
	$("#modifyBtn").show();
	});
});

$(document).ready(function() {
	$("#modifyBtn").click(function() {
		
		var delivery = {
						data: []
		}
		
		delivery.data.push({
					regione: $("#input-regione").val(),
					provincia: $("#input-provincia").val(),
					citta: $("#input-citta").val(),
					via: $("#input-via").val(),
					cap: $("#input-cap").val()
		});
		
		$.ajax({
			url: "modifyDeliveryData",
			type: "post",
			data: JSON.stringify(delivery.data),
			success: function(results) {
				$("#success-modify").show("slow").delay(3500).fadeOut();
				
			}
		
		});
		
	});
});

$(document).ready(function() {
	$("#changePwdBtn").click(function() {
		if($("#input-oldpwd").val() == "" || $("#input-newpwd").val() == ""){
			$("#warning1-modifyPwd").show("slow").delay(3500).fadeOut();
		}
		else if($("#input-oldpwd").val() != "" && ($("#input-oldpwd").val() != $("#oldPwd").val())){
			$("#warning2-modifyPwd").show("slow").delay(3500).fadeOut();
		}
		else if($("#input-newpwd").val() == $("#oldPwd").val()){
			$("#warning3-modifyPwd").show("slow").delay(3500).fadeOut();
		}else{
			$.ajax({
				url: "modifyClientPwd",
				type: "post",
				data: {
					"newPwd": $("#input-newpwd").val()
				},
				success: function(results) {
					$("#input-oldpwd").val("");
					$("#input-newpwd").val("");
					$("#success-modifyPwd").show("slow").delay(3500).fadeOut();
					
				}
				
			});
		}
		
	});
});
