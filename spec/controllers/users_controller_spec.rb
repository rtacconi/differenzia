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
    before(:each) do
      @user = mock_model(User)
      User.stub!(:find).with("1").and_return(@user)
    end

    it "should be successful" do
      get 'edit', :id => "1"
      response.should be_success
    end
    
  end

  #CREATE
  describe "POST users" do

    describe "with valid params" do
      before(:each) do
        @user = mock_model(User)
        User.stub!(:new).and_return(@user)
        @params = { :first_name => 'name', :last_name => 'surname', :email => 'mail@differenzia.com',
                    :role => 'user', :password => 'password', :password_confirmation => 'password' }
      end
  
      it "should create a new user and return object" do
        User.should_receive(:create).with(@params).and_return(@user)
        post :create, :user => @params
      end
  
      #it "should save the user" do
      #  @user.should_receive(:save).and_return(true)
      #  post :create, :user => @params
      #end
  
      it "should redirect to user's index page" do
        post :crate, :user => @params
        response.should redirect_to users_url
      end
    end

  end
  
  #UPDATE
  describe "PUT users/:id" do

    describe "with valid params" do
      before(:each) do
        @user = mock_model(User, :update_attributes => true)
        User.stub!(:find).with("1").and_return(@user)
      end

      it "should find user and return object" do
        User.should_receive(:find).with("1").and_return(@user)
        put :update, :id => "1", :user => {}
      end

      it "should update the user object's attributes" do
        @user.should_receive(:update_attributes).and_return(true)
        put :update, :id => "1", :user => {}
      end

      it "should redirect to user's index page" do
        put :update, :id => "1", :user => {}
        response.should redirect_to users_url
      end

      it "should have a flash notice" do
        put :update, :id => "1", :user => {}
        flash[:notice].should_not be_blank
      end

      it "should have a successful flash notice" do
        put :update, :id => "1", :user => {}
        flash[:notice].should eql 'Operatore modificato con successo.'
      end

    end
    
    describe "with invalid params" do
      before(:each) do
        @user = mock_model(User, :update_attributes => false)
        User.stub!(:find).with("1").and_return(@user)
      end

      it "should find user and return object" do
        User.should_receive(:find).with("1").and_return(@user)
        put :update, :id => "1", :user => {}
      end

      it "should update the user object's attributes" do
        @user.should_receive(:update_attributes).and_return(false)
        put :update, :id => "1", :user => {}
      end

      it "should render the edit form" do
        put :update, :id => "1", :user => {}
        response.should render_template :edit
      end

    end

  end
    
end
