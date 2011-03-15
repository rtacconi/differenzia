Given /^I have a user with email address "([^"]*)"$/ do |email|
  User.make!(:first_name => 'User', :last_name => 'User', :email => email, :role => 'user')
end 

Given /^I am a guest$/ do
  # do nothing
end
