class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.integer :customer_id
      t.integer :quantity
      t.integer :screening_id
      
      t.timestamps
    end
  end
end
