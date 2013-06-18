class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :movie_id
      t.integer :customer_id
      t.integer :score
      
      t.timestamps
    end
  end
end
