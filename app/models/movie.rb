class Movie < ActiveRecord::Base
  attr_accessible :title, :description, :rating, :opening_date, :starring, :director, 
                  :runtime, :released_by, :genres, :three_d, :online, :poster
                  
  has_attached_file :poster, :styles => { :small => "78x118", :medium => "198x298" }, 
                    :default_url => "/images/:style/missing.png"
  
  scope :online, where(:online => true)
end