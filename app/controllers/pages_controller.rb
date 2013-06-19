class PagesController < ApplicationController
  caches_page :index, :about, :contact
  
  def index
    expires_in 24.hours, :public => true
  end
  
  def about
  end

  def contact    
  end
end