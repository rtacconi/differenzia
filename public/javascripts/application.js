$(function() {
  $('#customer_search').searchbox({
	url: '/customers/search',
    param: 'customer_search',
    dom_id: '#results',
    delay: 250,
    loading_css: '#spinner'
  });
})
