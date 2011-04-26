Given /^I have a customer with "([^"]*)" as product already delivered$/ do |product|
  p = Product.make!(:name => product)
  Delivery.make!(:product => p)
end

Given /^I have "([^"]*)" as product$/ do |product|
  Product.make!(:name => product)
end

When /^I should see the delivery$/ do
  pending # express the regexp above with the code you wish you had
end