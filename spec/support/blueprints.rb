require 'machinist/active_record'

User.blueprint do
  email {"user#{sn}@differenzia.it"}
  password {"password"}
  password_confirmation {"password"}
  role { "user" }
end
