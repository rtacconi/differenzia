class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.integer :year
      t.string :full_name
      t.date :birth_date
      t.string :address
      t.string :number
      t.string :postal_code
      t.string :city
      t.string :area
      t.string :ssn
      t.string :contract_number
      t.integer :square_meters
      t.integer :category
      t.string :taxable_address	# main address

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
