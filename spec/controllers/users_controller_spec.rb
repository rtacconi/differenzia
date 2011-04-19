require 'spec_helper'

describe UsersController do

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
        login_admin
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
        do_delete
        response.should redirect_to users_url
      end
      
      def do_delete format = 'html'
        login_admin
        delete 'destroy', :id => "1", :format => format
      end
    end
  end
  
  describe "GET reset_password" do

    before(:each) do
      @user = stub_model(User, :id => "3", :update_attributes => true)
      User.stub!(:find).with("3").and_return(@user)
      login_admin
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
