class CartItem < ActiveRecord::Base
  attr_accessible :customer_id, :screening_id, :quantity
    
  belongs_to :customer  
end