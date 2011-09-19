class RemoveQuantityFromDeliveries < ActiveRecord::Migration
  def change
    remove_column :deliveries, :quantity
  end
end
