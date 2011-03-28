Given /^I am an authenticated user$/ do                                                                                                                            
  User.make!({ :first_name => 'User', :last_name => 'User', :email => 'user@differenzia.com', :role => 'user', :password => 'password', :password_confirmation => 'password' })
end

Then /^I search for "([^"]*)"$/ do |arg1|                                                                                                                          

end
