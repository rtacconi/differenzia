class CustomersController < ApplicationController
	layout :choose_layout
	
	def index
		unless params[:customer_search].blank?
			full_name = params[:customer_search]
			@total =  Customer.where( :full_name.matches => "%#{full_name}%").count
			@customers = Customer.all.paginate(:per_page => 15, :page => params[:page]) if full_name == "*"
		end
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
