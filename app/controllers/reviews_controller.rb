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
  
  def edit
    @review = Review.find(params[:id], :include => :movie)
    @customer = current_customer
    @movie = @review.movie
  end
  
  def update
    @review = Review.find(params[:id])
    
    if @review.update_attributes(params[:review])
      redirect_to movie_url(@review.movie)
    else
      render :edit
    end
  end
  
  def destroy
    Review.find(params[:id]).destroy
    redirect_to customer_url(current_customer)
  end
end