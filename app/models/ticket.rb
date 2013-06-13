class Ticket < ActiveRecord::Base
  attr_accessible :customer_id, :movie_id, :showtime_id
  
  belongs_to :customer
  belongs_to :movie
  belongs_to :showtime
end