class Review < ActiveRecord::Base
  attr_accessible :movie_id, :customer_id, :score
  
  validates :score, :inclusion => { :in => [0, 1, 2, 3, 4],
    :message => "must be 0 to 4 stars" }
  
  belongs_to :movie
  belongs_to :customer
end