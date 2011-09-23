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
/*
function remove_fields(link) {  
    $(link).prev("input[type=hidden]").val("1");  
    $(link).closest(".fields").hide();  
}

function add_fields(link, association, content) {
	var new_id = new Date().getTime();
	var regexp = new RegExp("new_" + association, "g");
	$(link).parent().before(content.replace(regexp, new_id));
}  */

$(document).ready(function(){
  counter = 1;
  $("#add_item").click(function(event){
    form = '<div id="item_'+counter+'">'
    form += '<select name="delivery_item[product_id]"><option value="1">prod 1</option>';
    form += '<option value="2">prod 2</option></select>';
    form += ' <input type="text" name="delivery_item[quantity]" value="1" />';
    form += ' <a href="#" id="remove_'+counter+'" data-id="'+counter+'">remove</a>' // save id as the div
    form += '</div>'
    // select should be loaded from products controller via AJAX- products#render_select
    $('#new_delivery').append(form);
    $('#remove_'+counter).live( 'click', function(event) {
      $('#item_'+event.target.getAttribute('data-id')).empty();
    });
    counter++;
  });
  
  $("#save_item").click(function(event){
    alert('product saved');
  });
  
  // test
  $.ajax({
    type: "GET",
    url: "http://localhost:3001/render_select.json",    
    dataType: "json",
    success: function(data){
      option = '<select>';
      for( var i=0; i<data.length; i++ ){
        option += '<option value="'+data[i].product.id + '">'+data[i].product.name+'</option>';
      }
      option += '</select>';
      alert(option);
    }
  });
  
});

$('#remove_1').click(function(event){
  alert('product saved');
});
