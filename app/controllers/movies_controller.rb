class MoviesController < ApplicationController
  
  before_filter :authenticate_admin!, :only => [:new, :create, :edit, :update, :destory]
  
  def index
    now = DateTime.now
    @now_playing = Movie.where("opening_date <= ?", now).online
    @coming_soon = Movie.where("opening_date > ?", now).online
  end
  
  def show
    @movie = Movie.find(params[:id])
    now = DateTime.now
    @now_playing = Movie.where("opening_date <= ?", now).online
    @coming_soon = Movie.where("opening_date > ?", now).online
  end
  
  def new
    @movie = Movie.new
    @movie.online = false
    @movie.three_d = false
  end
  
  def create
    @movie = Movie.new(params[:movie])
    
    if @movie.save
      redirect_to movie_url(@movie)
    else
      render :new
    end
  end
  
  def edit
    @movie = Movie.find(params[:id])
  end
  
  def update
    @movie = Movie.find(params[:id])
    
    if @movie.update_attributes(params[:movie])
      redirect_to movie_url(@movie)
    else
      render :edit
    end
  end
  
  def destroy
    Movie.find(params[:id]).destroy
    redirect_to :action => 'index'
  end
end
