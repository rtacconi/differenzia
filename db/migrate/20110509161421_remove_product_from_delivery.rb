class RemoveProductFromDelivery < ActiveRecord::Migration
  def self.up
    remove_column :deliveries, :product_id
  end

  def self.down
    add_column :deliveries, :product_id, :integer
  end
end
