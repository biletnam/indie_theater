class CreateTicket < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :order_id
      t.integer :showtime_id
      
      t.timestamps
    end
  end
end
