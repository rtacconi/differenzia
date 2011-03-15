Given /^I have a user with email address "([^"]*)"$/ do |email|
  User.make!(:first_name => 'User', :last_name => 'User', :email => email, :role => 'user')
end 

Given /^I am not authenticated$/ do
  visit('/d/users/sign_out')
end

Given /^I have an admin user with "([^"]*)" as email$/ do |arg1|
  User.make!(:role => 'admin', :email => arg1,
             :password => 'password', :password_confirmation => 'password',
             :first_name => "Riccardo", :last_name => "Tacconi")
end