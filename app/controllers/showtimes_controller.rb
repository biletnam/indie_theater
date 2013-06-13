class ShowtimesController < ApplicationController
  
  # before_filter :authenticate_customer!, :only => [:show]
  
  def index
    @today = DateTime.now    
    now = Date.today.to_s
    @day = @today + params[:day].to_i
    @offset = params[:day].to_i
    
    @now_playing = Movie.where("opening_date < ?", @day).online
    @showtimes = Showtime.where('time BETWEEN ? AND ?', @day.beginning_of_day, @day.end_of_day).all
  end
  
  def show
    @showtime = Showtime.find(params[:id])
    @movie = Movie.find(params[:movie])
    @order = Order.new
  end
end
