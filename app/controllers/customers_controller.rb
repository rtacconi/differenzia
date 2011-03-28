class CustomersController < ApplicationController
	layout :choose_layout
	
	def index
		fullname = params[:customer_search]		
		@customers = Customer.all.paginate(:per_page => 15, :page => params[:page]) if fullname == "*"
		render :layout => false if request.xhr?
	end
	
	private
  def choose_layout
    if [ 'show' ].include? action_name
      'delivery'
    else
      'application'
    end
  end
		
end
