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
        User.make!
        Customer.should_receive(:search_full_name).with(@full_name).and_return(@customers)
        @customers.should_receive(:paginate)
        do_get
        assigns(:customers).should_not be_nil
      end
    end

    context "when full_name is blank" do
      it "should not return any object" do
        @full_name = ""
        do_get
        assigns(:customers).size.should eql(0)
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

  def do_get format = 'html'
    login_user
    get 'index', :customer_full_name => @full_name, :format => format
  end
  
end
