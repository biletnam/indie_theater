class MoviesController < ApplicationController
  def index
    now = Date.today.to_s
    @now_playing = Movie.where("opening_date < ?", now).online
    @coming_soon = Movie.where("opening_date > ?", now).online
  end
end
