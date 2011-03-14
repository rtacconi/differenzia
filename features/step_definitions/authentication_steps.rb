Given /^I have a user with email address "([^"]*)"$/ do |email|
  User.make!(:email => email)
end 

Then /^I should redirect to the root page"$/ do                                                                           
    visit "/"                                                      
end 
