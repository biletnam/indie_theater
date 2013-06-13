class Showtime < ActiveRecord::Base
  attr_accessible :time, :ticket_ids
  
  has_many :movie_showtimes
  has_many :movies, :through => :movie_showtimes
  has_many :tickets
end