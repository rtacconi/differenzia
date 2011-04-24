class DropImportTable < ActiveRecord::Migration
  def self.down
    create_table :import_tables do |t|
      t.string :original_path

      t.timestamps
    end
  end

  def self.up
    drop_table :import_tables
  end
end
