class ChangeQuantityInProducts < ActiveRecord::Migration
  def change
    change_column :products, :quantity, :integer
  end
end
