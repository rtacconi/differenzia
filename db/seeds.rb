# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
user = User.create!({:first_name => "Admin",
	                   :last_name => "Admin",
										 :email => "admin@differenzia.com", 
                     :role => "admin", 
                     :password => "adminadmin", 
                     :password_confirmation => "adminadmin" }) # do not change the password!!!
user1 = User.create!({:first_name => "Manager",
                      :last_name => "Manager",
                      :email => "manager@differenzia.com",
                      :role => "manager",
                      :password => "managermanager",
                      :password_confirmation => "managermanager" }) # do not change the password!!!
user2 = User.create!({:first_name => "User",
                      :last_name => "User",
                      :email => "user@differenzia.com",
                      :role => "user",
                      :password => "useruser",
                      :password_confirmation => "useruser" }) # do not change the password!!!
puts "Admin user was created with ID #{user.id}."
puts "Manager user was created with ID #{user1.id}."
puts "User user was created with ID #{user2.id}."
