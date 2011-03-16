Given /^I am not authenticated$/ do 
   visit 'd/users/sign_out/'
end

Given /^I have one user "([^"]*)" "([^"]*)" with email "([^"]*)" role "([^"]*)" password "([^"]*)" and password_confirmation "([^"]*)"$/ do |first_name, last_name, email, role, password, password_confirmation|
  User.make!(:first_name => "#{first_name}",
            :last_name => "#{last_name}",
            :email => "#{email}",
            :role => "#{role}",
            :password => "#{password}",
            :password_confirmation => "#{password_confirmation}")
end 
