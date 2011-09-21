class Customer < ActiveRecord::Base
  has_many :deliveries
	#cattr_reader :per_page
  #@@per_page = 10
  default_scope :order => 'full_name ASC'
  accepts_nested_attributes_for :deliveries
  
  def self.search_full_name(full_name)
    # http://metautonomo.us/projects/metawhere/
    where(:full_name.matches => "%#{full_name}%")
  end
  
  def valid_square_meters
    (AppConfig['valid_square_meters'] >= square_meters) ? true : false
  end
end




# == Schema Information
#
# Table name: customers
#
#  id              :integer(10)     not null, primary key
#  year            :integer
#  full_name       :string(255)
#  birth_date      :date
#  address         :string(255)
#  number          :string(255)
#  postal_code     :string(255)
#  city            :string(255)
#  area            :string(255)
#  tax_code        :string(255)
#  contract_number :string(255)
#  square_meters   :integer
#  category        :integer
#  taxable_address :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

