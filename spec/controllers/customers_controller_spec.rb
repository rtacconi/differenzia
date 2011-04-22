require 'spec_helper'

#describe CustomersController do

  describe "search with js", :js => true  do
    before(:each) do
      User.make!
      Customer.make!
      #@customers = mock_model(Customer, :full_name => "User-1").as_null_object
    end

    context "when full_name is 'user'" do
      it "should find customers" do
        #Customer.make!
        login
        page.should have_content "Customers"
        page.should have_content "Dashboard"
        click_link('Customers')
        page.should have_content "Nominativo"
        fill_in "customer_full_name", :with => "User"
        page.should have_content "Data di nascita"
        #do_get
        #@full_name = "User"
        #Customer.should_receive(:search_full_name).with(@full_name).and_return(@customers)
        #@customers.should_receive(:paginate)
        #do_get
        #assigns(:customers).should_not be_nil
      end
    end

    context "when full_name is blank" do
      it "should not return any object" do
        @full_name = ""
        Customer.should_receive(:all).and_return(@customers)
        @customers.should_receive(:paginate)
 #       do_get
        assigns(:customers).should_not be_empty
      end
    end

    context "when full_name is wrong" do
      it "customers should be nil" do
      	@full_name = "wrong"
        assigns(:customers).should be_nil
  #      do_get
      end
    end
  end

  def login
    #User.make!
    visit '/d/users/sign_in/'
    fill_in "user_email", :with => "user0001@differenzia.com"
    fill_in "user_password", :with => "password"
    click_button "Sign in"
  end

  def do_get page= nil, format = 'html'
    #login_user
    #get 'index', :customer_full_name => @full_name, :format => format
    page.execute_script("$('#customer_full_name').searchbox({
        url: '/customers/search',
        param: 'customer_full_name',
        dom_id: '#results',
        delay: 250,
        loading_css: '#spinner'
        })")
  end
  
#end
