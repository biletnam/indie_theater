class AddSuperFieldToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :super, :boolean
  end
end
