class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.integer :customer_id
      t.integer :product_id
      t.decimal :qt
      t.text :notes

      t.timestamps
    end
  end
end
