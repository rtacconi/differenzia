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
end

# == Schema Information
#
# Table name: customers
#
#  id              :integer         not null, primary key
#  year            :integer
#  full_name       :string(255)
#  birth_date      :date
#  address         :string(255)
#  postal_code     :string(5)
#  locality        :string(255)
#  tax_code        :string(16)
#  contract_number :string(255)
#  square_meters   :integer
#  category        :integer
#  taxable_address :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

