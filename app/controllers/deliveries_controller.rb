class DeliveriesController < InheritedResources::Base
=begin 
  def index
    @customer = Customer.find(params[:customer_id])
    @deliveries = Delivery.where("customer_id = ?", params[:customer_id])
  end

  def show
  end
  
  def create
    @delivery = Delivery.new(params[:delivery])
    if @delivery.save
      flash[:notice] = "New delivery created."
    else
      flash[:error] = "Error."
    end
    
    redirect_to customer_deliveries_url(params[:delivery][:customer_id])
  end
=end
end
