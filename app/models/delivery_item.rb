class DeliveryItem < ActiveRecord::Base
  belongs_to :delivery
  belongs_to :product
  #has_one :customer, :through => :delivery
end
