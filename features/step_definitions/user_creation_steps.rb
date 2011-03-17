Given /^I am an user with role "([^"]*)"$/ do |role|
  User.find_by_role("#{role}")                
end                                                                                    

Then /^I should see the list of users$/ do                                             
    users_path                    
end
