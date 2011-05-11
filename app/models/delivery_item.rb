class DeliveryItem < ActiveRecord::Base
  belongs_to :delivery
  belongs_to :product
<<<<<<< HEAD
  #has_one :customer, :through => :delivery
=======
>>>>>>> 1768dbde4a15355a7745928a420b1d861e07c569
end
