class Rating < ActiveRecord::Base
  attr_accessible :value, :movie_ids
  
  has_many :movies
end