class CreateDeliveries < ActiveRecord::Migration
  def self.up
    create_table :deliveries do |t|
      t.date :delivered_at
      t.text :notes
      t.references :customer

      t.timestamps
    end
  end

  def self.down
    drop_table :deliveries
  end
end
