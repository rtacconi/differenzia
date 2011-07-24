class DeliveryItem < ActiveRecord::Base
  belongs_to :delivery
  belongs_to :product
  #has_one :customer, :through => :delivery
end

# == Schema Information
#
# Table name: delivery_items
#
#  id          :integer(10)     not null, primary key
#  quantity    :integer
#  delivery_id :integer
#  product_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#

