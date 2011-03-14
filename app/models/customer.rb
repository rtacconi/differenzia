class Customer < ActiveRecord::Base
	
	default_scope :order => 'full_name ASC'

  def self.search(fullname)
    where('full_name ILIKE ?', "#{fullname}%") if fullname
  end

end
