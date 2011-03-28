require 'spec_helper'

describe CustomersController do

  describe "GET index" do
    before(:each) do
      @customers = mock_model(Customer)
    end
    context "when full_name is '*'" do
      it "should find all paginated customers" do
        @customers = Customer.paginate
        Customer.should_receive(:all).and_return(@customers)
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
    get 'index', :full_name => '*', :format => format
  end


end
