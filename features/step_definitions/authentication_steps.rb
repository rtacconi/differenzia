Given /^I am not authenticated$/ do 
   visit 'd/users/sign_out/'
end


And /^I should see the link "([^"]*)"$/ do |link|
  page.should have_link(link)
end

Given /^I have one user with email "([^"]*)" role "([^"]*)" and password "([^"]*)"$/ do |email, role, password|
  user = User.find_by_email(email)
  if user.present?
    user
  else
    User.create!(:role => role, :email => email,
                 :password => password, :password_confirmation => password,
                 :first_name => "John", :last_name => "Doe")
  end
end
