require 'spec_helper'
require 'support/controller_macros'

describe DashboardController do
  describe "as normal user" do
    login_user
	
    describe "GET 'index'" do
      it "should be successful" do
        get 'index'
        response.should be_success
      end
    end
  end
  
  describe "as admin" do
    # TODO test if the use is a real admin, I still do not trust login_admin
    login_admin
	
    describe "GET 'index'" do
      it "should be successful" do
        get 'index'
        response.should be_success
      end
    end
  end
end
