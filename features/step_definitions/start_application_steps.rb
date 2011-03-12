Given /^I am not authenticated$/ do
  #login
end

When /^I access the root of the application$/ do
    visit ('/')
end

Then /^I should redirect to "([^"]*)"$/ do |arg1|
    visit "/users/sign_in"
end

