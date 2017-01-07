# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@checkRightInsuranceForProcess = ->
	process_id = $("#process_id").val()
	$.ajax '/activity/'+process_id+'/checkInsurance',
		type: 'GET'
		dataType: 'script'
		success: (data,textStatus, jqXHR) ->
			console.log "Проверка достаточности страхования выполнена успешно"

$(document).ready ->
	@addIns = ->
		selectedIns = $("#insuranceList").val()
		process_id = $("#process_id").val()
		console.log "Adding Insurance to process: "+process_id
		$.ajax '/activity/'+process_id+'/addInsurance/'+selectedIns,
			type: 'GET'
			dataType: 'script'
			success: (data,textStatus, jqXHR) ->
				console.log "succeed added insurance: "+selectedIns	

	@removeIns = (id) ->
		process_id = $("#process_id").val()
		console.log "Removing Insurance from process: "+process_id
		$.ajax '/activity/'+process_id+'/removeInsurance/'+id,
			type: 'GET'
			dataType: 'script'
			success: (data,textStatus, jqXHR) ->
				console.log "succeed removed insurance: "+id	

	@attachFile = ->
		$('#fileModal').modal('toggle')


return

	
