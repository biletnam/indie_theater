class MoviesController < ApplicationController
  def index
    now = Date.today.to_s
    @now_playing = Movie.where("opening_date < ?", now).online
    @coming_soon = Movie.where("opening_date > ?", now).online
  end
  
  def show
    @movie = Movie.find(params[:id])
    now = Date.today.to_s
    @now_playing = Movie.where("opening_date < ?", now).online
    @coming_soon = Movie.where("opening_date > ?", now).online
  end
  
  def new
    @movie = Movie.new
    @movie.online = false
    @movie.three_d = false
  end
  
  def create
    @movie = Movie.new(params[:movie])
    
    if @movie.save!
      redirect_to movie_url(@movie)
    else
      render :new
    end
  end
end
