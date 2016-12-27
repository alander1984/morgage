# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#srok1').hide()
  $('#recrSrokDiv').hide()
  $('#request_emplOtherText').hide()
  $('#request_otherIncomeOtherText').hide()
  $('#divAlimonyAmoint').hide()
  $('#divOtherEstate').hide() 

  $('#request_estOther').change ->
    if $(this).is(':checked')
      $('#divOtherEstate').show()
    else
      $('#divOtherEstate').hide()
    return
    
  

  $('#credit_type_6').change ->
    if $(this).is(':checked')
      $('#credit_otherText').show()
    else
      $('#credit_otherText').hide()
    return
  
  $('#request_expenseAlimony').change ->
    if $(this).is(':checked')
      $('#divAlimonyAmoint').show()
    else
      $('#divAlimonyAmoint').hide()
    return

  $('#new_person_registration_type').change ->
    if $(this).is(':checked')
      $('#srok1').hide()
    else
      $('#srok1').show()
    return

   $('#request_emplFixedRecr').change ->
    if $(this).is(':checked')
      $('#recrSrokDiv').show()
    else
      $('#recrSrokDiv').hide()
    return 

   $('#request_emplOther').change ->
    if $(this).is(':checked')
      $('#request_emplOtherText').show()
    else
      $('#request_emplOtherText').hide()
    return 

  $('#request_otherIncomeOther').change ->
    if $(this).is(':checked')
      $('#request_otherIncomeOtherText').show()
    else
      $('#request_otherIncomeOtherText').hide()
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

  $('#formTypeBox').change ->
    if $(this).is(':checked')
      $('.extended').each ->
        $(this).fadeIn()
        $('#shortFormCaption').text('3. Личные данные Заявителя');
      return
    else
      $('.extended').each ->
        $(this).fadeOut()
        $('#shortFormCaption').text('Личные данные Заявителя');
      return
    return

return

