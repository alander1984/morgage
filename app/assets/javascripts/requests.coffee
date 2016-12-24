# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#srok1').hide()
  $('#new_person_registration_type').change ->
    if $(this).is(':checked')
      $('#srok1').hide()
    else
      $('#srok1').show()
    return
  $('#new_person_sameliveaddress').change ->
    if $(this).is(':checked')
      $('#liveAddress1').hide();
      $('#liveAddress2').hide();
      $('#liveAddress3').hide();
      $('#liveAddress4').hide();
      $('#liveAddress5').hide();
      $('#liveAddressMainCell').attr('rowspan', '1');
    else
      $('#liveAddress1').show();
      $('#liveAddress2').show();
      $('#liveAddress3').show();
      $('#liveAddress4').show();
      $('#liveAddress5').show();
      $('#liveAddressMainCell').attr('rowspan', '6');
    return
  return