// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require bootstrap-toggle
//= require_tree .
$(document).ready(function() {
	$('#srok1').hide();
       		 
	$('#new_person_registration_type').change(function() {
    	    if($(this).is(":checked")) {
        	    $('#srok1').hide()
       		 }
        	else {
            	$('#srok1').show()
        	}
    	});
});