class CartItem < ActiveRecord::Base
  attr_accessible :customer_id, :showtime_id, :quantity
    
  belongs_to :customer
  belongs_to :showtime  
end