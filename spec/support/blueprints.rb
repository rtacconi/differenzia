require 'machinist/active_record'

User.blueprint do
  email {"user#{sn}@differenzia.it"}
  password {"password"}
  password_confirmation {"password"}
  role {"user"}
  first_name {"Riccardo"}
  last_name {"Tacconi"}
end

Customer.blueprint do
  full_name {"Riccardo#{sn} Tacconi"}
  address_line_1 {"Via dei Mille #{sn}"}
  country {"Italia"}
end
