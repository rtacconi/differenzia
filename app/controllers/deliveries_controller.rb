<<<<<<< HEAD
class DeliveriesController < InheritedResources::Base
=======
class DeliveriesController < ApplicationController
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

>>>>>>> 1768dbde4a15355a7745928a420b1d861e07c569
end
