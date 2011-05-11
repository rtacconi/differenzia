class RenameQtInDeliveries < ActiveRecord::Migration
  def self.up
    rename_column :deliveries, :qt, :quantity
    change_column :deliveries, :quantity, :decimal, :precision => 8, :scale => 2
  end

  def self.down
    change_column :deliveries, :quantity, :decimal
    rename_column :deliveries, :quantity, :qt
  end
end
