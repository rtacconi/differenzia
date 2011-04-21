Given /^I am not authenticated$/ do 
   visit 'd/users/sign_out/'
end


Then /^I should see the link "([^"]*)"$/ do |link|
  page.should have_link(link)
end

Then /^I should not see the link "([^"]*)"$/ do |link|                                
  page.should_not have_link(link)
end 

Given /^I have one user with email "([^"]*)" role "([^"]*)" and password "([^"]*)"$/ do |email, role, password|
  if User.find_by_email(email).nil?
    User.create!(:role => role, :email => email,
                 :password => password, :password_confirmation => password,
                 :first_name => "John", :last_name => "Doe")
  end
end
