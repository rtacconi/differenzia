class CustomersController < ApplicationController
	
	def index		
		Customer.all if params[:full_name] == '*'
	end
		
end
