class CreateDeliveryItems < ActiveRecord::Migration
  def self.up
    create_table :delivery_items do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :delivery_items
  end
end
