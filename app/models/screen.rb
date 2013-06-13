class Screen < ActiveRecord::Base
  attr_accessible :seats
  
  has_many :showtimes
  has_many :movies, :through => :showtimes
end