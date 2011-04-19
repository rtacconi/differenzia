Given /^I have a customer$/ do
  Customer.create!(:year => 2011, :full_name => "User-0", :birth_date => "2011-08-02", :address => "address-0", :number => nil, :postal_code => "12345", :city => "ROME", :prov => "RM", :tax_code => "asdsde12d78b324y", :contract_number => nil, :square_meters => 0)
end