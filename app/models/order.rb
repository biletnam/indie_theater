class Order < ActiveRecord::Base
  attr_accessible :customer_id, :ticket_ids
    
  belongs_to :customer
  has_many :tickets, :dependent => :destroy
  
  accepts_nested_attributes_for :tickets
end