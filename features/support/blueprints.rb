require 'machinist/active_record'

User.blueprint do
  email {"user#{sn}@differenzia.com"}
  password {"password"}
  password_confirmation {"password"}
  role {"user"}
  first_name {"Riccardo"}
  last_name {"Tacconi"}
end

Customer.blueprint do
  full_name {Faker::Name.name}
end

Product.blueprint do
  name {"Red bags"}
  description {Faker::Lorem.sentence}
  quantity {2}
  unit_type {"Packages"}
  price {12.4}
end

Delivery.blueprint do
  product {Product.make!}
  customer {Customer.make!}
  notes {Faker::Lorem.sentence}
end