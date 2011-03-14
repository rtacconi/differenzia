require 'spec_helper'

describe User do
  describe "Create user with a role in the list" do
    it "should create an admin user" do
      User.make!(:role => "admin")
      User.count.should be == 1
    end
    
    it "should create a manager" do
      User.make!(:role => "manager")
      User.count.should be == 2
    end
    
    it "should create a normal user" do
      User.make!(:role => "user")
      User.count.should be == 3
    end
    
    it "is not valid with a wrong role" do
      User.new(:role => "wrong_role").should_not be_valid
    end
  end
end
