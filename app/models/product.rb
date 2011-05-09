class Product < ActiveRecord::Base
  has_many :delivery_items
  has_many :deliveries, :through => :delivery_items
end


# == Schema Information
#
# Table name: products
#
#  id          :integer(10)     not null, primary key
#  name        :string(255)
#  description :string(255)
#  qt          :integer(131089)
#  unit_type   :string(255)
#  price       :decimal(8, 2)
#  created_at  :datetime
#  updated_at  :datetime
#

