class CustomersController < ApplicationController
	layout :choose_layout
	
	def index		
		@customers = Customer.all.paginate
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
