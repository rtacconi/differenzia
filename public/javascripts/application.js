$(function() {
  $('#customer_full_name').searchbox({
	url: '/customers/search',
    param: 'customer_full_name',
    dom_id: '#results',
    delay: 250,
    loading_css: '#spinner'
  });
})
