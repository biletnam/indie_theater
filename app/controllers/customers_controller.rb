class CustomersController < ApplicationController
  
  # before_filter :authenticate_admin!
  
  def show
    @customer == current_customer
  end
  
  def edit
    @customer = Customer.find(params[:id])
    
    unless @customer == current_customer
      redirect_to root_url
    end
  end
end
