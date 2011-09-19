class RenameQtInDeliveries < ActiveRecord::Migration
  def change
    rename_column :deliveries, :qt, :quantity
    change_column :deliveries, :quantity, :decimal, :precision => 8, :scale => 2
  end
end
