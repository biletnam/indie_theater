class Showtime < ActiveRecord::Base
  attr_accessible :time
  
  has_many :movie_showtimes
  has_many :movies, :through => :movie_showtimes
end