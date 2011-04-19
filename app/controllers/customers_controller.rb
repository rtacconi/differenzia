class CustomersController < InheritedResources::Base

	def index
		@mq_accepted = 12 # valore al di sotto del quale non devono essere consegnati i sacchetti
		unless params[:customer_full_name].blank?
		full_name = params[:customer_full_name]
		@customers = Customer.search_full_name(full_name).paginate(:per_page => 10,
		  :page => params[:page])
		else
			@customers = Customer.all.paginate(:per_page => 10, :page => params[:page])
		end
		render :layout => false if request.xhr?
	end
=begin
	def search
		unless params[:customer_full_name].blank?
			@mq_accepted = 12  # valore al di sotto del quale non devono essere consegnati i sacchetti
			full_name = params[:customer_full_name]
			@customers = Customer.search_full_name(full_name).paginate(:per_page => 10, :page => params[:page])
		end
		#render 'index'
		render :layout => false if request.xhr?
	end
=end
	
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
