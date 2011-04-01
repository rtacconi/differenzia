class Customer < ActiveRecord::Base
  default_scope :order => 'full_name ASC'
  
  def self.search_full_name(full_name)
    # http://metautonomo.us/projects/metawhere/
    where(:full_name.matches => "%#{full_name}%")
  end
end

# == Schema Information
#
# Table name: customers
#
#  id              :integer         not null, primary key
#  year            :integer
#  full_name       :string(255)
#  birth_date      :date
#  address         :string(255)
#  number          :string(255)
#  postal_code     :string(5)
#  city            :string(255)
#  prov            :string(255)
#  tax_code        :string(16)
#  contract_number :string(255)
#  square_meters   :integer
#  category        :integer
#  taxable_address :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

