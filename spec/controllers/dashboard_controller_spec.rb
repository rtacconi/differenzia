require 'spec_helper'

describe DashboardController do
  before(:each) do
    @user = User.make!
    sign_in @user
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

end
