class PagesController < ApplicationController
  caches_page :about, :contact
  
  def index
  end
  
  def about
  end

  def contact    
  end
end
