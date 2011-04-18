class CustomersController < InheritedResources::Base
=begin	
	def index
		unless params[:customer_search].blank?
			@mq_accepted = 12
			full_name = params[:customer_search]
			
			if full_name == "*"
				@customers = Customer.all.paginate(:per_page => 15, :page => params[:page])
			else
				@customers = Customer.search_full_name(full_name).paginate(:per_page => 15, :page => params[:page])
			end
		end
		
		render :layout => false if request.xhr?
	end
=end
	def search
		unless params[:customer_search].blank?
			@mq_accepted = 12  # valore al di sotto del quale non devono essere consegnati i sacchetti
			full_name = params[:customer_search]
			@customers = Customer.search_full_name(full_name).paginate(:page => params[:page])
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
