# encoding: utf-8

module ApplicationHelper
  
  def link_to_showtime_day(offset, current_offset)
		if offset == 0
      string = "Today"
    elsif offset == 1
      string = "Tomorrow"
    else
      string = (DateTime.now + offset).strftime("%A")
    end
    
    link_class = (offset == current_offset) ? "highlighted" : nil      
    
    link_to(string, showtimes_url(:day => offset), :class => link_class)
  end
  
  def login_logout_link
     if customer_signed_in?
       link_to("My Account", customer_url(current_customer))
     else 
       link_to("Sign In", new_customer_session_url) 
     end
  end
  
  def compute_score(movie)
    sum = 0
    movie.reviews.each do |review|
      sum += review.score
    end
    
    (sum.to_f/movie.reviews.size).round
  end
  
  def display_score(movie)
    if movie.reviews.size < 1
      "No Reviews Yet -"  
    else
      string = ""
      score = compute_score(movie)

      score.times do
        string +=  "&#x2605;"
      end
      
      (4 - score).times do 
        string += "&#9734;"
      end
      
      string += " (#{movie.reviews.size})"
      string.html_safe
    end
  end
end
