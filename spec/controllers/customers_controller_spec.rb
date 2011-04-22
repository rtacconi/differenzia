require 'spec_helper'

describe CustomersController do

  describe "customer search" do
    before(:each) do
      @customers = mock_model(Customer, :full_name => "User-1").as_null_object
    end

    context "when customer_full_name is 'user'" do
      it "should find customers" do
        @full_name = "User" 
        Customer.should_receive(:search_full_name).with(@full_name).and_return(@customers)
        #@customers.should_receive(:paginate)
        #assigns(:customers).should_not be_nil
        do_get
        assigns(:customers).should_not be_nil
      end
    end

    context "when customer_full_name is blank" do
      it "should return all customers" do
        @full_name = ""
        Customer.should_receive(:all).and_return(@customers)
        #@customers.should_receive(:paginate)
        #assigns(:customers).should_not be_nil
        do_get
        assigns(:customers).should_not be_nil
      end
    end

    context "when customer_full_name doesn't exists" do
      it "customers should be nil" do
      	@full_name = "wrong"
      	Customer.should_receive(:search_full_name).with(@full_name).and_return(@customers)
        #assigns(:customers).should be_nil
        do_get
        assigns(:customers).should be_nil
      end
    end
  end

  def do_get format = 'html'
    login_user
    get 'search', :customer_full_name => @full_name, :format => format
  end
  
end
