class Delivery < ActiveRecord::Base
  has_many :delivery_items
  has_many :products, :through > :delivery_items
  belongs_to :customer
end


# == Schema Information
#
# Table name: deliveries
#
#  id          :integer(10)     not null, primary key
#  customer_id :integer(10)
#  product_id  :integer(10)
#  quantity    :decimal(8, 2)
#  notes       :text
#  created_at  :datetime
#  updated_at  :datetime
#

