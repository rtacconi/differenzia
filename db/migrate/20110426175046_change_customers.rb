class ChangeCustomers < ActiveRecord::Migration
  def self.up
    rename_column :customers, :prov, :area # could be state, county, provincia, department
  end

  def self.down
    rename_column :customers, :area, :prov
  end
end
