# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
	$("#searchPersonBox").keyup ->
		search = $(this).val()
		if search == ''
			search = ' '
		$.ajax '/searchPersonPr1/'+search,
			type: 'GET'
			dataType: 'script'
			success: (data,textStatus, jqXHR) ->
				console.log "succeed search"
		$("#foundRequests").html ""

	@selProduct = ->
		selectedProduct = $("#productList").val()
		process_id = $("#process_id").val()
		console.log "Searching compatible options for product: "+selectedProduct
		$.ajax 'process/'+process_id+'/refreshOptionList/'+selectedProduct,
			type: 'GET'
			dataType: 'script'
			success: (data,textStatus, jqXHR) ->
				console.log "succeed search"

				


return	

