class RenameQtInProducts < ActiveRecord::Migration
  def change
    rename_column :products, :qt, :quantity
    change_column :products, :quantity, :decimal, :precision => 8, :scale => 2
  end
end
