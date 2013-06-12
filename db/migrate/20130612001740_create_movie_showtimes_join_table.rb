class Create movieShowtimes join table < ActiveRecord::Migration
  def change
    create_table :movie_showtimes do |t|
      t.integer :movie_id
      t.integer :showtime_id
      
      t.timestamps
    end
  end
end
