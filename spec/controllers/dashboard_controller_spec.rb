require 'spec_helper'
require 'support/controller_macros'

describe DashboardController do
  login_user
	
  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

end
