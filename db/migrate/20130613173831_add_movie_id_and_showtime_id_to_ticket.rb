class AddMovieIdAndShowtimeIdToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :movie_id, :integer
    add_column :tickets, :showtime_id, :integer
  end
end
