Given /^I am user "([^"]*)" "([^"]*)" with email "([^"]*)" role "([^"]*)" password "([^"]*)" and password_confirmation "([^"]*)"$/ do |first_name, last_name, email, role, password, password_confirmation|
#  User.make!(:first_name => "#{first_name}",
#             :last_name => "#{last_name}",
#             :email => "#{email}",
#             :role => "#{role}",
#             :password => "#{password}",
#             :password_confirmation => "#{password_confirmation}")
  User.find_by_email("#{email}")             
end

When /^I visit the csv import page$/ do                                                                   
  visit "/csv/import"                                       
end                                                                                                       
                                                                                                          
When /^I upload a file with valid customers data$/ do                                       
  attach_file('upload_csv', File.join(Rails.root.to_s, 'public', 'data', 'csv_ok'))
  click_button "Upload"
end                                                                                                       
                                                                                                          
When /^I upload a malformed file$/ do                                                                     
  attach_file('upload_csv', File.join(Rails.root.to_s, 'public', 'data', 'csv_not_ok'))
  click_button "Upload"                                     
end                                                                                                       
                                                                                                          
Then /^I should be sent to (\d+)\.html page$/ do |arg1|                                                   
  visit '/500.html'                                   
end 

