class AddColumnsToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :provider, :string
    add_column :customers, :uid, :string
    add_column :customers, :name, :string
  end
end
