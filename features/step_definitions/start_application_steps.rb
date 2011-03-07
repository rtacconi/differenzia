Given /^I am not authenticated$/ do
  visit('/users/sign_in')
end

When /^I access the root of the application$/ do
    visit ('/')
end

