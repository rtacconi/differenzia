/*$(function() {
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
  $("select[multiple]").asmSelect({
	  hideWhenAdded: true
  });
})*/

function remove_fields(link) {  
    $(link).prev("input[type=hidden]").val("1");  
    $(link).closest(".fields").hide();  
}

function add_fields(link, association, content) {  
	var new_id = new Date().getTime();  
	var regexp = new RegExp("new_" + association, "g");  
	$(link).up().insert({
		before: content.replace(regexp, new_id)  
	});  
}  