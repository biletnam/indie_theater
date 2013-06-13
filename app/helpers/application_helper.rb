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
end
