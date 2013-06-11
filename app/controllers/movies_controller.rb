class MoviesController < ApplicationController
  def index
    now = Date.today.to_s
    @now_playing = Movie.where("opening_date < ?", now)
    @coming_soon = Movie.where("opening_date > ?", now)
  end
end
