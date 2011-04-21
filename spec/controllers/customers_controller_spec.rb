require 'spec_helper'
require 'capybara/rspec'

describe CustomersController do
#  include Devise::TestHelpers

  describe "search whith js", :js => true  do
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
        Customer.should_receive(:all).and_return(@customers)
        @customers.should_receive(:paginate)
        do_get
        assigns(:customers).should_not be_empty
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

  def do_get page= nil, format = 'html'
    login_user
    #get 'index', :customer_full_name => @full_name, :format => format
    page.execute_script("$('#customer_full_name').searchbox({
        url: '/customers',
        param: 'customer_full_name',
        dom_id: '#results',
        delay: 250,
        loading_css: '#spinner'
        })")
  end
  
end
