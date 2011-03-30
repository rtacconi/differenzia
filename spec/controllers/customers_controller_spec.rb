require 'spec_helper'

describe CustomersController do

  describe "GET index" do
    before(:each) do
      @customers = mock_model(Customer, :first_name => "Riccardo", :last_name => "Tacconi")
      #funziona anche senza parametri
      #@customers = mock_model(Customer)
    end

    shared_examples_for "index action" do
      it "should be successful" do
        do_get
        response.should be_success
      end

      it "should render the correct template" do
        do_get
        response.should render_template(:index)
      end
    end

    context "when full_name is '*'" do
      it "should find all paginated customers" do
        @full_name = "*"
        @customers = Customer.paginate :per_page => 15, :page => 1
        Customer.should_not_receive(:find).with(@full_name)
        Customer.should_receive(:all).and_return(@customers)
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
    get 'index', :customer_search => @full_name, :format => format
  end
end
