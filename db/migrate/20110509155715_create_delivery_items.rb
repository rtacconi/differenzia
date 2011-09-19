class CreateDeliveryItems < ActiveRecord::Migration
  def change
    create_table :delivery_items do |t|
      t.decimal :quantity, :precision => 8, :scale => 2
      t.references :delivery
      t.references :product

      t.timestamps
    end
  end
end
