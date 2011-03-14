Given /^I have a user with email address "([^"]*)"$/ do |email|
  User.make!(:email => email, :role => 'user')
end 

Then /^I should redirect to the root page"$/ do                                                                           
    visit "/"                                                      
end 

Then /^I should redirect to the root page$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I have an admin user with email address "([^"]*)"$/ do |email|
   User.make!(:email => email, :role => 'admin')
end