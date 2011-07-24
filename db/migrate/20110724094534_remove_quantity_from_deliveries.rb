class RemoveQuantityFromDeliveries < ActiveRecord::Migration
  def self.up
    remove_column :deliveries, :quantity
  end

  def self.down
    add_column :deliveries, :quantity, :decimal
  end
end
