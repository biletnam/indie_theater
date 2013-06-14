class CartItemsController < ApplicationController
  
  before_filter :authenticate_customer!
  
  def create
    @cart_item = CartItem.new(params[:cart_item])
    @cart_item.customer_id = current_customer.id
    @showtime = Showtime.find(@cart_item.showtime_id)
    
    # @showtime.tickets.size + @cart_item.quantity <= @showtime.screen.seats
    
    if @cart_item.save
      redirect_to customer_url(current_customer)
    else
      redirect_to root_url 
    end
  end
end
