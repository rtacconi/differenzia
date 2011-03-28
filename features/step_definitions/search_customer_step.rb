Given /^I am an authenticated user$/ do
  User.make!({ :first_name => 'User', :last_name => 'User', :email => 'user@differenzia.com', :role => 'user', :password => 'useruser', :password_confirmation => 'useruser' })
end

