class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.integer :year
      t.string :full_name
      t.date :birth_date
      t.string :address
      t.string :number
      t.string :postal_code, :limit => 5	#codice postale
      t.string :city
      t.string :prov
      t.string :tax_code, :limit => 16	#codice fiscale o partita iva
      t.string :contract_number
      t.integer :square_meters
      t.integer :category
      t.string :taxable_address	#indirizzo per il quale viene fatta la rischiesta

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
