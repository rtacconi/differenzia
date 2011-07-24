require 'spec_helper'

describe Customer do
  describe "search by full name" do
    it "should find a customer" do
      Customer.make!(:full_name => 'Riccardo Tacconi')
      Customer.search_full_name("riccardo").count.should == 1
    end
    
    it "should not find a customer with a wrong name" do
      Customer.make!(:full_name => 'Riccardo Tacconi')
      Customer.search_full_name("joe pesci").count.should == 0
    end
  end
  
  describe "valid_square_meters" do
    it "should return true if square meters are more or equal to a default value" do
      @customer = Customer.make(:square_meters => Settings.valid_square_meters)
      @customer.valid_square_meters.should be_true
    end
  end
end






# == Schema Information
#
# Table name: customers
#
#  id              :integer(10)     not null, primary key
#  year            :integer
#  full_name       :string(255)
#  birth_date      :date
#  address         :string(255)
#  number          :string(255)
#  postal_code     :string(255)
#  city            :string(255)
#  area            :string(255)
#  tax_code        :string(255)
#  contract_number :string(255)
#  square_meters   :integer
#  category        :integer
#  taxable_address :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

