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
    
    describe "with invalid params" do
      it "should have not a successful flash notice" do
        @user = mock_model(User, :id => 1).as_null_object
        @params = {"first_name" => 'name', "last_name" => 'surname', "email" => 'mail@differenzia.com', 
                   "role" => 'user'}
        post 'create', :user => @params
        flash[:notice].should_not eql 'Operatore creato con successo.'        
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
        do_put
      end

      it "should update the user object's attributes" do
        @user.should_receive(:update_attributes).and_return(true)
        do_put
      end

      it "should redirect to user's index page" do
        do_put
        response.should redirect_to users_url
      end

      it "should have a flash notice" do
        do_put
        flash[:notice].should_not be_blank
      end

      it "should have a successful flash notice" do
        do_put
        flash[:notice].should eql 'Operatore modificato con successo.'
      end

      def do_put format = 'html'
        put 'update', :id => "1", :user => {}, :format => format
      end
    end
    
    describe "with invalid params" do

      before(:each) do
        @user = mock_model(User, :update_attributes => false)
        User.stub!(:find).with("1").and_return(@user)
      end

      it "should find user and return object" do
        User.should_receive(:find).with("1").and_return(@user)
        do_put
      end

      it "should update the user object's attributes" do
        @user.should_receive(:update_attributes).and_return(false)
        do_put
      end

      it "should render the edit form" do
        do_put
        response.should render_template :edit
      end

      def do_put
        put :update, :id => "1", :user => {}
      end
    end
  end
  
  describe "DELETE destroy" do
    
    describe "succefully destroy the user" do
      before(:each) do
        @user = mock_model(User, :destroy => true)
        User.stub!(:find).with("2").and_return(@user)
      end
    
      it "should find user" do
        User.should_receive(:find).with("2").and_return(@user)
        do_delete
      end
    
      it "should destroy the user" do
        @user.should_receive(:destroy).and_return(true)
        do_delete
      end

      it "should redirect to user's index page" do
        do_delete
        response.should redirect_to users_url
      end

      it "should set the flash" do
        do_delete
        flash[:notice].should eql 'Operatore eliminato con successo.'
      end

      def do_delete format = 'html'
        delete 'destroy', :id => "2", :format => format
      end
    end
    
    describe "user with an invalid id" do

      before(:each) do
        User.stub!(:find).with("1").and_raise(ActiveRecord::RecordNotFound)
      end

      it "should have a flash error" do
        do_delete
        flash[:error].should eql "L'Operatore non può essere eliminato."
      end

      it "should redirect to user's index page" do
        delete 'destroy', :id => "1" 
        response.should redirect_to users_url
      end
      
      def do_delete format = 'html'
        delete 'destroy', :id => "1", :format => format
      end
    end
  end
  
  describe "GET reset_password" do

    before(:each) do
      @user = stub_model(User, :id => "3", :update_attributes => true)
      User.stub!(:find).with("3").and_return(@user)
    end
    
    it "should reset the password" do
      get :reset_password, :id => "3"
      #flash[:notice].should eql "La password e` stata resettata."
    end

    it "should update the user object's attributes" do
      @user.should_receive(:update_attributes).and_return(true)
      get :reset_password, :id => "3"
    end

    it "should have a successful flash notice" do
      get :reset_password, :id => "3"
      flash[:notice].should eql 'La password è stata resettata.'
    end

    it "should send an email" do
      get :reset_password, :id => "3"
      pending
    end
  end
  
end
