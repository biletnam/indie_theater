class Movie < ActiveRecord::Base
  attr_accessible :title, :description, :opening_date, :starring, :director, 
                  :runtime, :released_by, :three_d, :online, :poster, :trailer,
                  :rating_id, :genre_ids, :showtime_ids, :showtimes_attributes
                  
  belongs_to :rating
  has_many :movie_genres
  has_many :genres, :through => :movie_genres
  has_many :showtimes

                  
  has_attached_file :poster, :styles => { :small => "78x118", :medium => "198x298" }, 
                    :default_url => "/images/:style/missing.png"
  
  accepts_nested_attributes_for :showtimes, :allow_destroy => true
  
  scope :online, where(:online => true)
  scope :offline, where(:online => false)
  
  def full_title
    self.title += " 3D" if self.three_d
    
    self.title
  end
end