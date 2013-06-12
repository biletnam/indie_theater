class MovieShowtime < ActiveRecord::Base
  attr_accessible :movie_id, :showtime_id
  
  belongs_to :movie
  belongs_to :showtime
end