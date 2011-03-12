Given /^I am not authenticated$/ do
  #login
end

When /^I access the root of the application$/ do
  visit("/")
end

#Then /^I should redirect to "([^"]*)"$/ do |arg1|
#    visit "/users/sign_in"
#end

Then /^I should redirect to sign_in page$/ do                                                             
  visit  "/users/sign_in"                                       
end 

Given /^I am an authenticated user$/ do     
  email = 'mrsanna1@gmail.com'                                       
  login = 'mauro.sanna'
  password = 'secret'
end                                                                                                       

When /^I access the root of application$/ do                                                              
  visit '/'                                       
end 
