class ChangeQuantityInDeliveryItems < ActiveRecord::Migration
  def change
    change_column :delivery_items, :quantity, :integer
  end
end
