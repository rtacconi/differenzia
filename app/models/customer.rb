class Customer < ActiveRecord::Base
  default_scope :order => 'full_name ASC'
  
  def self.search_full_name(full_name)
    # http://metautonomo.us/projects/metawhere/
    where(:full_name.matches => "%#{full_name}%")
  end
end
