class Showtime < ActiveRecord::Base
  attr_accessible :movie_id, :screen_id, :time
  
  belongs_to :movie
  belongs_to :screen
end