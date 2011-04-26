class CreateDeliveries < ActiveRecord::Migration
  def self.up
    create_table :deliveries do |t|
      t.integer :customer_id
      t.integer :product_id
      t.decimal :qt
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :deliveries
  end
end
