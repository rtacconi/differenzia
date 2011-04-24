class Product < ActiveRecord::Base
  has_many :deliveries
end
