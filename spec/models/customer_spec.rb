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
