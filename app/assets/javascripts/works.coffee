# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#work_actOtherText').hide()

  $('#work_act20').change ->
    if $(this).is(':checked')
      $('#work_actOtherText').show()
    else
      $('#work_actOtherText').hide()
    return
return