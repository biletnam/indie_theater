class Showtime < ActiveRecord::Base
  attr_accessible :movie_id, :screen_id, :time, :ticket_ids
  
  belongs_to :movie
  belongs_to :screen
  has_many :tickets
  has_many :cart_items
end