class ReviewsController < ApplicationController
  before_filter :authenticate_customer!
  
  def new
    @review = Review.new
    @customer = current_customer
    @movie = Movie.find(params[:movie_id])
  end
  
  def create
    @review = Review.new(params[:review])
    @movie = Movie.find(params[:review][:movie_id])
    
    if @review.save!
      redirect_to movie_url(@movie)
    else
      render :new
    end
  end
end