class CreateImportCells < ActiveRecord::Migration
  def self.up
    create_table :import_cells do |t|
      t.references :import_table
      t.integer :row_index
      t.integer :column_index
      t.string :contents

      t.timestamps
    end
  end

  def self.down
    drop_table :import_cells
  end
end
