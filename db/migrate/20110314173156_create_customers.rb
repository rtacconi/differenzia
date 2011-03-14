class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :full_name
      t.string :address_line_1
      t.string :address_line_2
      t.string :address_line_3
      t.string :postal_code
      t.string :country

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
