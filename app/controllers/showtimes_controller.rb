class ShowtimesController < ApplicationController
  def index
    @today = DateTime.now
    @showtimes = Showtime.where('time BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all
  end
end
