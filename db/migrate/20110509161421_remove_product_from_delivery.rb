class RemoveProductFromDelivery < ActiveRecord::Migration
  def change
    remove_column :deliveries, :product_id
  end
end
