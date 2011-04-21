require 'machinist/active_record'
require 'spec/support/blueprints.rb'

User.blueprint do
  email {"user#{sn}@differenzia.com"}
  password {"password"}
  password_confirmation {"password"}
  role {"user"}
  first_name {"Riccardo"}
  last_name {"Tacconi"}
end

Customer.blueprint do
  full_name {"Riccardo#{sn} Tacconi"}
  address {"Via dei Mille #{sn}"}
  locality {"Italia"}
end
