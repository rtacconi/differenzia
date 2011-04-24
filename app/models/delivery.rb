class Delivery < ActiveRecord::Base
  belongs_to :customer
  has_many :delivery_items
  has_many :products, :through => :delivery_items
end
