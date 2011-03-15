Given /^I am a valid user with role "([^"]*)"$/ do |role|
  User.find_by_role("#{role}")                
end                                                                                    
                                                                                       
Then /^I should go to the users page$/ do                                             
    pending # express the regexp above with the code you wish you had                    
end
