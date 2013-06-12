class AdminsController < ApplicationController
  
  before_filter :authenticate_admin!
  
  def index
    unless current_admin.super
      redirect_to root_url
    end
    
    @admins = Admin.all
  end
   
  # def show
  #   @movie = Movie.find(params[:id])
  #   now = Date.today.to_s
  #   @now_playing = Movie.where("opening_date < ?", now).online
  #   @coming_soon = Movie.where("opening_date > ?", now).online
  # end
  
  def new
    unless current_admin.super
      redirect_to root_url
    end
    
    @admin = Admin.new
    @admin.super = false
  end
  
  def create
    @admin = Admin.new(params[:admin])
    @admin.super = false
    
    if @admin.save!
      redirect_to root_url
    else
      render :new
    end
  end
  
  def edit
    unless current_admin.super
      redirect_to root_url
    end
    
    @admin = Admin.find(params[:id])
  end
  
  def update
    @admin = Admin.find(params[:id])
    
    if @admin.update_attributes(params[:admin])
      redirect_to admins_url
    else
      render :edit
    end
  end
end
