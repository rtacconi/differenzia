$(function() {
  $('#customer_search').searchbox({
	url: '/customers/list',
    param: 'customer_search',
    dom_id: '#results',
    delay: 250,
    loading_css: '#spinner'
  });
}
