class Delivery < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :customer
  has_many :delivery_items
  has_many :products, :through => :delivery_items
end
=======
  has_many :delivery_items
  has_many :products, :through => :delivery_items
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

>>>>>>> 1768dbde4a15355a7745928a420b1d861e07c569
