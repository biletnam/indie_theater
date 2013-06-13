class CreateShowtimesJoinTable < ActiveRecord::Migration
  def change
    create_table :showtimes do |t|
      t.integer :movie_id
      t.integer :screen_id
      t.datetime :time
      
      t.timestamps
    end
  end
end
