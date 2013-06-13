class CreateScreens < ActiveRecord::Migration
  def change
    create_table :showtimes do |t|
      t.integer :seats
      
      t.timestamps
    end
  end
end
