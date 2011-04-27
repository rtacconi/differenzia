class Product < ActiveRecord::Base
  has_many :deliveries
end

# == Schema Information
#
# Table name: products
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :string(255)
#  qt          :decimal(, )
#  unit_type   :string(255)
#  price       :decimal(8, 2)
#  created_at  :datetime
#  updated_at  :datetime
#

