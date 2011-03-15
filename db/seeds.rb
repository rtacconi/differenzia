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
puts "Admin user was created with ID #{user.id}."