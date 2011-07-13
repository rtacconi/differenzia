class ChangeQuantityInProducts < ActiveRecord::Migration
  def self.up
    change_column :products, :quantity, :integer
  end

  def self.down
    change_column :products, :quantity, :decimal, :precision => 8, :scale => 2
  end
end
