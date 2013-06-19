class Comment < ActiveRecord::Base
  attr_accessible :movie_id, :customer_id, :body
  
  belongs_to :movie
  belongs_to :customer
end