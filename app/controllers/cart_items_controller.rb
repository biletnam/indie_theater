class CartItemsController < ApplicationController
  
  # before_filter :authenticate_customer!, :only => [:show]
  
  def create
    @cart_item = CartItem.new(params[:cart_item])
    @cart_item.customer_id = current_customer.id
    
    if @cart_item.save
      redirect_to customer_url(current_customer)
    else
      redirect_to root_url 
    end
  end
end
