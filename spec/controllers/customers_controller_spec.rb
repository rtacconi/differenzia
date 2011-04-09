require 'spec_helper'

describe CustomersController do
  include Devise::TestHelpers

  describe "GET index" do
    before(:each) do
      @customers = mock_model(Customer, :first_name => "Riccardo", :last_name => "Tacconi")
      #funziona anche senza parametri
      #@customers = mock_model(Customer)
    end

    shared_examples_for "index action" do
      it "should be successful" do
        @full_name = "user"
        do_get
        response.should be_success
      end

      it "should render the correct template" do
        do_get
        response.should render_template(:index)
      end
    end

    context "when full_name is '*'" do
      it "should find all paginated customers" do"*"
        Customer.should_not_receive(:find).with("*")
        Customer.should_not_receive(:search_full_name)
        @full_name = "*"
        do_get
        @customers.should_not be_nil
      end
      it_should_behave_like "index action"
    end

    context "when full_name is blank" do
      it "should display nothing" do
        @full_name = ""
        do_get
        assigns(:customers).should be_nil
      end
      it_should_behave_like "index action"
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
    get 'index', :customer_search => @full_name, :format => format
  end
  
end
