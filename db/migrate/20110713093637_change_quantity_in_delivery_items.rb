class ChangeQuantityInDeliveryItems < ActiveRecord::Migration
  def self.up
    change_column :delivery_items, :quantity, :integer
  end

  def self.down
    change_column :delivery_items, :quantity, :decimal, :precision => 8, :scale => 2
  end
end
