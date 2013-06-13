class CreateTicket < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :customer_id
      
      t.timestamps
    end
  end
end
