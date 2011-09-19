class ChangeCustomers < ActiveRecord::Migration
  def change
    rename_column :customers, :prov, :area # could be state, county, provincia, department
    rename_column :customers, :ssn, :tax_code
  end
end
