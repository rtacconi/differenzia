class CustomersController < InheritedResources::Base
  #layout :choose_layout
  
  def search_full_name
	  unless params[:customer_full_name].blank?
      full_name = params[:customer_full_name]
      @customers = Customer.search_full_name(full_name).paginate(
        :per_page => Settings.customers_per_page,
        :page => params[:page])
    else
      @customers = Customer.all.paginate(:per_page => Settings.customers_per_page, :page => params[:page])
    end
    render :layout => false if request.xhr?	  
	end
	
protected
  def collection
  	@customers ||= end_of_association_chain.paginate(:page => params[:page])
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