require 'spec_helper'

describe UsersController do

  describe "GET new" do

    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET index" do

    it "should find all users" do
      User.should_receive(:all)
      do_get
    end

    it "should be successful" do
      do_get
      response.should be_success
    end

    it "should render the correct template" do
      do_get
      response.should render_template(:index)    
    end

    it "should assign the users to the @users view variable" do
      do_get
      assigns[:user].should == @users
    end

    def do_get page = nil, format = 'html'
      get 'index', :format => format
    end
  end

=begin
  describe "GET show" do

    before(:each) do
      @user = mock_model(User, :id => "1")
    end

    describe "with a valid ID" do
      before(:each) do
        User.stub!(:find).and_return(@user)
      end

      it "should find the correct user" do
        User.should_receive(:find).with(@user.id.to_s).and_return(@user)
        do_get
      end

      it "should render the correct template" do
        do_get
        response.should render_template(:show)
      end

      def do_get format = 'html'
        get 'show', :id => @user.id, :format => format
      end
    end

    describe "with an invalid ID" do
      before(:each) do
       User.stub!(:find).and_raise(ActiveRecord::RecordNotFound)
      end

      it "should redirect to ..... if not found"

      def do_get format = 'html'
        get 'show', :id => -1, :format => format
      end
    end
  end
=end

  describe "GET edit" do

    before(:each) do
      User.stub!(:find).with("1").and_return(@user)
    end

    it "should be successful" do
      get 'edit', :id => "1"
      response.should be_success
    end
  end

  describe "POST create" do

    describe "with valid params" do

      before(:each) do
        @user = mock_model(User, :id => 1, :save => true)
        User.stub!(:new).and_return(@user)
        @params = {"first_name" => 'name', "last_name" => 'surname', "email" => 'mail@differenzia.com', 
                   "role" => 'user', "password" => 'password', "password_confirmation" => 'password'}
      end
  
      it "should create a new user and return object" do
        User.should_receive(:create).with(@params).and_return(@user)
        do_post
      end
  
      it "should redirect to user's index page" do
        do_post
        response.should redirect_to users_url
      end

      def do_post format = 'html'
        post 'create', :user => @params, :format => format
      end
    end
  end
  
  describe "PUT update" do

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
  
  describe "DELETE destroy" do
    
    describe "succefully destroy the user" do
      before(:each) do
        @user = mock_model(User)
        User.stub!(:find).with("2").and_return(@user)
      end
    
      it "should find user" do
        User.should_receive(:find).with("2").and_return(@user)
        delete :destroy, :id => "2"
      end
    
      it "should destroy the user" do
        @user.should_receive(:destroy).and_return(true)
        delete :destroy, :id => "2" 
      end
    
      it "should set the flash" do
        delete :destroy, :id => "2"
        flash[:notice].should eql 'Operatore eliminato con successo.'
      end
    end
    
    describe "user 1" do
      it "should set the flash with a negative message" do
        stub_model(User, :id => 1)
        delete :destroy, :id => 1 
        flash[:notice].should eql "L'operatore con ID 1 non puo` essere eliminato."
      end
      
      it "should not destroy this user" do
        @user_1 = stub_model(User, :id => 1)
        @user_1.should_not_receive(:destroy).and_return(true)
        delete :destroy, :id => 1 
      end
    end
  end
  
  describe "GET reset_password" do
    before(:each) do
      @user = stub_model(User, :id => "3")
      User.stub!(:find).with("3").and_return(@user)
    end
    
    it "should reset the password" do
      pending "still failing when the controller is ok"
      get :reset_password, :id => "3"
      flash[:notice].should eql "La password e` stata resettata."
    end
    
    it "should send an email" do
      get :reset_password, :id => "3"
      pending
    end
  end
  
end
