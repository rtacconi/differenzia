class CustomersController < InheritedResources::Base
  #layout :choose_layout
  before_filter :set_valid_square_meters, :only => [:index, :search]
  
  def search
	  unless params[:customer_full_name].blank?
      full_name = params[:customer_full_name]
      @customers = Customer.search_full_name(full_name).paginate(
        :per_page => 10,
        :page => params[:page])
    else
      @customers = Customer.all.paginate(:per_page => 10, :page => params[:page])
    end
    render :layout => false if request.xhr?	  
	end
	
protected
  def collection
  	@customers ||= end_of_association_chain.paginate(:page => params[:page])
  end
  
  def set_valid_square_meters
    # block product delivery for lower values
    @valid_sq = Settings.valid_square_meters if Settings.enable_valid_square_meters
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