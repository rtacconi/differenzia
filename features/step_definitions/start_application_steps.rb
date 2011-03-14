Given /^I am not authenticated$/ do                                                                                       
    #login                                                    
end                                                                                                                       
                                                                                                                          
When /^I access the root of the application$/ do                                                                          
    visit "/"                                                       
end                                                                                                                       
                                                                                                                          
Then /^I should redirect to sign_in page$/ do                                                                             
    visit "/users/sign_in"                                                       
end 
