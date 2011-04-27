require 'spec_helper'

describe DeliveriesController do

  describe "GET 'index'" do
    it "should be successful" do
      login_user
      pending
      get 'index'
      response.should be_success
      pending
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      login_user
      get 'show'
      response.should be_success
    end
  end
  
  describe "POST create" do
    it "should redirect to customer dilivery" do
      login_user
      post :create, :delivery => {:customer_id => "1"}
      response.should redirect_to customer_deliveries_url("1")
    end
    
    it "should create a delivery" do
      @delivery = mock_model(Delivery)
      Delivery.stub!(:new).and_return(@delivery)
      post :create, 
           :delivery => {"product_id"=>"2", "quantity"=>"3", "notes"=>"qewqwer", "customer_id"=>"1"}
      assigns(:delivery)
    end
  end

end
