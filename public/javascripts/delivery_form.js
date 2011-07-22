$(function() {
  $('input[name=select_delivery_type]:radio').change(function(){
	if ($("input[@name='select_delivery_type']:checked").val() == 'default_delivery') {
	  $('#product_selection').fadeOut(2000);
      $('#standard_delivery').fadeIn(2000);
    }  
    else {
      $('#standard_delivery').fadeOut(2000);
      $('#product_selection').fadeIn(2000); 
    }
  });
  $("select[multiple]").asmSelect();
})