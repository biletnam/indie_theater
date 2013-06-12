class ShowtimesController < ApplicationController
  def index
    @today = DateTime.now
    now = Date.today.to_s
    @now_playing = Movie.where("opening_date < ?", now).online
    @showtimes = Showtime.where('time BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).all
  end
end
