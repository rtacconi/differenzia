$(function() {
  $('input[name=select_delivery_type]:radio').change(function(){
	if ($("input[@name='select_delivery_type']:checked").val() == 'default_delivery') {
	  $('#product_selection').fadeOut('slow');
      $('#standard_delivery').fadeIn('slow');
    }  
    else {
      $('#standard_delivery').fadeOut('slow');
      $('#product_selection').fadeIn('slow'); 
    }
  });
})