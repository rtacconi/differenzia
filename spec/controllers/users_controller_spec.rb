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
    
    it "should redirect if user is not found"
  end

  describe "POST create" do
    before(:each) do
      @user_hash = {:first_name => "John", :last_name => "Doe", :email => "user@differenzia.com",
                    :password => "password", :password_confirmation => "password", :role => "user"}
    end
    
    it "should redirect" do
      post :create, :user => @user_hash
      response.should redirect_to users_url
      flash.now[:notice].should be == "Operatore creato con successo"
    end
    
    it "should set the flash notice" do
      post :create, :user => @user_hash
      flash.now[:notice].should be == "Operatore creato con successo"
    end
    
    it "should call create" do
      User.should_receive(:create).and_return(true)
      post :create, :user => @user_hash
    end
  end

  describe "PUT update" do
    # http://www.killswitchcollective.com/articles/47_testing_rails_controllers_with_rspec
    before(:each) do
      @user = mock_model(User)
      User.stub!(:find).and_return(@user)
    end
    
    it "should save and redirect" do
      @user.stub!(:update_attributes).and_return(true)
      put :update, :user => {:first_name => "riccardo", :last_name => "tacconi", :email => "rt@differenzia.com",
                              :password => "password", :password_confirmation => "password", :role => "user"},
                   :id => @user.id
      response.should redirect_to users_url
    end
    
    it "should set the flash notice" do
      @user.should_receive(:update_attributes).and_return(true)
      put :update, :user => {:first_name => "riccardo", :last_name => "tacconi", :email => "rt@differenzia.com",
                              :password => "password", :password_confirmation => "password", :role => "user"},
                   :id => @user.id
      flash.now[:notice].should be == "Operatore modificato con successo"
    end
    
    it "should update the attributes"
  end

  describe "DELETE 'destroy'" do
    it "should be successful"
    it "should redirect to users list"
    it "should set the flash"
  end

end
