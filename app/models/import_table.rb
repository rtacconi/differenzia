class ImportTable < ActiveRecord::Base
	has_many :import_cells, :dependent => :destroy
end

# == Schema Information
#
# Table name: import_tables
#
#  id            :integer         not null, primary key
#  original_path :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

