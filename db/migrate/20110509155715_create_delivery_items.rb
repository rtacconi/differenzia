class CreateDeliveryItems < ActiveRecord::Migration
  def self.up
    create_table :delivery_items do |t|
      t.decimal :quantity, :precision => 8, :scale => 2
      t.references :delivery
      t.references :product

      t.timestamps
    end
  end

  def self.down
    drop_table :delivery_items
  end
end
