class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :qt
      t.string :unit_type
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
