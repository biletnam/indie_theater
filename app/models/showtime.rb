class Showtime < ActiveRecord::Base
  attr_accessible :screening
  
  has_many :movie_showtimes
  has_many :movies, :through => :movie_showtimes
end