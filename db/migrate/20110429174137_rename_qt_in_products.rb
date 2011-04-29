class RenameQtInProducts < ActiveRecord::Migration
  def self.up
    rename_column :products, :qt, :quantity
    change_column :products, :quantity, :decimal, :precision => 8, :scale => 2
  end

  def self.down
    change_column :products, :quantity, :decimal
    rename_column :products, :quantity, :qt
  end
end
