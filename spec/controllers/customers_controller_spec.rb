require 'spec_helper'

describe CustomersController do
  include Devise::TestHelpers

  describe "search" do
    before(:each) do
      @customers = mock_model(Customer, :full_name => "User-1")
    end

    context "when full_name is 'user'" do
      it "should find customers" do
        @full_name = "User"
        Customer.should_receive(:search_full_name).with(@full_name).and_return(@customers)
        @customers.should_receive(:paginate)
        do_get
        assigns(:customers).should_not be_nil
      end
    end

    context "when full_name is blank" do
      it "should display nothing" do
        @full_name = ""
        do_get
        assigns(:customers).should be_empty
      end
    end

    context "when full_name is wrong" do
      it "customers should be nil" do
      	@full_name = "wrong"
        assigns(:customers).should be_nil
        do_get
      end
    end
  end

  def do_get page = nil, format = 'html'
    login_user
    get 'index', :customer_full_name => @full_name, :format => format
  end
  
end
