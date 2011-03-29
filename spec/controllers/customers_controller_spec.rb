require 'spec_helper'

describe CustomersController do

  describe "GET index" do
    before(:each) do
      @customers = mock_model(Customer, :full_name => "Mauro", :save => true)
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
      end
      it_should_behave_like "index action"
    end

    context "when full_name is blank" do
      it "should display nothing" do
        @full_name = ""
        do_get
      end
      it_should_behave_like "index action"
    end

    context "when full_name is wrong" do
      it "should not find customers" do
      	@full_name = "wrong"
        Customer.should_receive(:find).with(@full_name).and_return(@customers)
        @customers.should == 0
        do_get
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
