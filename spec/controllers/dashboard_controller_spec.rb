require 'spec_helper'
require 'support/controller_macros'

describe DashboardController do
  include Devise::TestHelpers
  
  describe "as normal user" do
    describe "GET 'index'" do
      it "should be successful" do
        login_user
        get 'index'
        response.should be_success
      end
    end
  end
  
  describe "as admin" do    
    describe "GET 'index'" do
      it "should be successful" do
        login_admin
        get 'index'
        response.should be_success
      end
    end
  end
end
