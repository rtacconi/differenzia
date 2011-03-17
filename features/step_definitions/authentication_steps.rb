Given /^I am not authenticated$/ do 
   visit 'd/users/sign_out/'
end

Given /^I have one user with email "([^"]*)" role "([^"]*)" password "([^"]*)"$/ do |email, role, password|
  User.make!(:email => email,
            :role => role,
            :password => password,
            :password_confirmation => password)
end 

And /^I should see the link "([^"]*)"$/ do |link|
  page.should have_link(link)
end


Given /^I have an admin user with "([^"]*)" as email$/ do |arg1|
  user = User.find_by_email(arg1)
  if user.present?
    user
  else
    User.create!(:role => 'admin', :email => arg1,
                 :password => 'adminadmin', :password_confirmation => 'adminadmin',
                 :first_name => "Riccardo", :last_name => "Tacconi")
  end
end
