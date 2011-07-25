class CustomersController < InheritedResources::Base
  #layout :choose_layout
  
  def search_full_name
	  unless params[:customer_full_name].blank?
      full_name = params[:customer_full_name]
      @customers = Customer.search_full_name(full_name).page(params[:page]).per(Settings.customer_per_page)
    else
      @customers = Customer.all.page(params[:page]).per(Settings.customer_per_page)
    end
    render :layout => false if request.xhr?	  
	end
	
	def show
	  @customer = Customer.find(params[:id])
	  @delivery = @customer.deliveries.build
	  @products = Product.all
	  @products_selected = []
	  Settings.default_delivery.products.each{|pr| @products_selected << pr.id_value}
	  show!
	end
	
protected
  def collection
  	@customers ||= end_of_association_chain.page(params[:page])
  end
	
=begin	
	private
  def choose_layout
    if [ 'show' ].include? action_name
      'delivery'
    else
      'application'
    end
  end
=end  
		
end