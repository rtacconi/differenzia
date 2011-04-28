class ChangeCustomers < ActiveRecord::Migration
  def self.up
    rename_column :customers, :prov, :area # could be state, county, provincia, department
    rename_column :customers, :ssn, :tax_code
  end

  def self.down
    rename_column :customers, :tax_code, :ssn
    rename_column :customers, :area, :prov
  end
end
