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


# == Schema Information
#
# Table name: users
#
#  id                   :integer         not null, primary key
#  email                :string(255)     default(""), not null
#  encrypted_password   :string(128)     default(""), not null
#  password_salt        :string(255)     default(""), not null
#  reset_password_token :string(255)
#  remember_token       :string(255)
#  remember_created_at  :datetime
#  sign_in_count        :integer         default(0)
#  current_sign_in_at   :datetime
#  last_sign_in_at      :datetime
#  current_sign_in_ip   :string(255)
#  last_sign_in_ip      :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#  role                 :string(255)     default("user"), not null
#

