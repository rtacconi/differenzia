Given /^I have a user with email address "([^"]*)"$/ do |email|
  User.make!(:email => email)
end 
