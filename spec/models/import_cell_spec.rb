require 'spec_helper'

describe ImportCell do
  pending "add some examples to (or delete) #{__FILE__}"
end

# == Schema Information
#
# Table name: import_cells
#
#  id              :integer         not null, primary key
#  import_table_id :integer
#  row_index       :integer
#  column_index    :integer
#  contents        :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

