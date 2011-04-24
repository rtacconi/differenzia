class DropImportCells < ActiveRecord::Migration
  def self.down
    create_table :import_cells do |t|
      t.references :import_table
      t.integer :row_index
      t.integer :column_index
      t.string :contents

      t.timestamps
    end
  end

  def self.up
    drop_table :import_cells
  end
end
