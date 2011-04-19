Given /^I am authenticated as user with email "([^"]*)" and password "([^"]*)"$/ do |email, password|
  visit '/d/users/sign_in/'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Sign in"
end

Given /^I am authenticated as admin with email "([^"]*)" and password "([^"]*)"$/ do |email, password|
  visit('d/users/sign_in/')
  fill_in("user_email", :with => email)
  fill_in("user_password", :with => password)
  click_button("Sign in")
end

Given /^I am in the dashboard page$/ do
  visit('/')
end

When /^save_and_open_page$/ do
  save_and_open_page
end