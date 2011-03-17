require 'spec_helper'

describe UsersController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "should be successful" do
      user = User.make!
      get 'edit', :id => user.id
      response.should be_success
    end
  end

  describe "POST 'create'" do
    it "should be successful" do
      post :create, :user => {:first_name => "riccardo", :last_name => "tacconi", :email => "rt@differenzia.com",
                              :password => "password", :password_confiramtion => "password"}
      response.should redirect_to users_url
      flash.now[:notice].should be == "Operatore creato con successo"
    end
  end

  describe "PUT 'update'" do
    it "should be successful" do
      pending
    end
  end

  describe "DELETE 'destroy'" do
    it "should be successful" do
      pending
    end
  end

end
