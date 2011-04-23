Given /^I am authenticated with email "([^"]*)" and password "([^"]*)"$/ do |email, password|
  visit '/d/users/sign_in/'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => "password"
  click_button "Sign in"
end

Given /^I have one user with email "([^"]*)" role "([^"]*)" and password "([^"]*)"$/ do |email, role, password|
  if User.find_by_email(email).nil?
    User.create!(:role => role, :email => email,
                 :password => password, :password_confirmation => password,
                 :first_name => "John", :last_name => "Doe")
  end
end

Given /^I am in the dashboard page$/ do
  visit('/')
end

When /^save_and_open_page$/ do
  save_and_open_page
end

Given /^I am in the users page$/ do
  visit users_url
end