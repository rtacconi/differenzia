require 'spec_helper'

describe CustomersController do

  describe "GET index" do
    before(:each) do
      @customers = mock_model(Customer)
    end
    context "when full_name is '*'" do
      it "should find all paginated customers" do
        @full_name = "*"
        @customers = Customer.paginate :per_page => 15, :page => 1
        Customer.should_receive(:all).and_return(@customers)
        do_get
      end

      #it "should be successful" do
      #  do_get
      #  response.should be_success
      #end

      #it "should render the correct template" do
      #  do_get
      #  response.should render_template(:index)
      #end
    end

    context "when full_name is blank" do
      it "should display nothing" do
        @full_name = ""
        do_get
      end
    end

    context "when number of customers found is equal 0" do
      it "should display nothing" do
        @full_name = ""
        do_get
      end
    end

    after(:each) do
      it "should be successful" do
        do_get
        response.should be_success
      end

      it "should render the correct template" do
        do_get
        response.should render_template(:index)
      end
    end

    #before(:each) do
    #  Customer.stub!(:search_full_name).with("mauro").and_return(@customers)
    #end

    #it "should be successful" do
    #  get :index, :full_name => "mauro"
    #  response.should be_success
    #end
  end

  def do_get page = nil, format = 'html'
    get 'index', :customer_search => @full_name, :format => format
  end


end
