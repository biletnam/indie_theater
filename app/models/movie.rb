class Movie < ActiveRecord::Base
  attr_accessible :title, :description, :rating, :opening_date, :starring, :director, 
                  :runtime, :released_by, :genres, :three_d, :online
  
  scope :online, where(:online => true)
end