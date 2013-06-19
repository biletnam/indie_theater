class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :movie_id
      t.integer :customer_id
      t.text :body
    
      t.timestamps
    end
  end
end
