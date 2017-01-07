# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
	@addInsuranceToProduct = ->
		selectedIns = $("#listInsurances").val()
		$.ajax 'addInsurance/'+selectedIns,
			type: 'GET'
			dataType: 'script'
			success: (data,textStatus, jqXHR) ->
				console.log "succeed added insurance "+ selectedIns

	@removeInsFromProduct = (insId) ->
		$.ajax 'removeInsurance/'+insId,
			type: 'GET'
			dataType: 'script'
			success: (data,textStatus, jqXHR) ->
				console.log "succeed removed insurance "+ insId					

return