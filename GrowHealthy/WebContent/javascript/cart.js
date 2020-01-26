
function addToChart() {
		
	var name = $("#productName").text();
	
	var price = $("#productPrice").text();
	
	var img = $("#productImage").attr("src");
	
	$("<li>" 
			+"<table class='table table-striped'>"
				+"<tbody>"
					+"<tr>"
						+"<td class='text-center'>"
							+"<a href='#'><img class='img-thumbnail' src=" 
								+"image/product/7product50x59.jpg"
							+"></a>"
						+"</td>"		
						+ "<td class='text-left'><a href='javascript:void(0);'>"
							+"Test"
						+"</a></td>"		
						+"<td class='text-right'>"
							+"1000"
						+"</td>"
						+"<td class='text-center'>"
							+"<button class='btn btn-danger btn-xs' title='Remove' type='button'>"
								+"<i class='fa fa-times'></i>"
						+"</button></td>"
					+"</tr>"
				+"</tbody>"
			+"</table>"
		+"</li>").insertBefore($("#subtotal"));
	
}