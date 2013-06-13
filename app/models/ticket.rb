class Ticket < ActiveRecord::Base
  attr_accessible :order_id, :showtime_id
  
  belongs_to :order
  belongs_to :showtime
end