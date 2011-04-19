class CustomersController < ApplicationController
	#layout :choose_layout
	
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
	
	def show
		@customer = Customer.find(params[:id])		
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
