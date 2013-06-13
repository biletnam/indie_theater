class OrdersController < ApplicationController
  
  before_filter :authenticate_customer!
  
  def show
    @today = DateTime.now
    @order = Order.find(params[:id])
    @showtime = @order.tickets.first.showtime
    @movie = @showtime.movie
  end
  
  def create
    quantity = params[:quantity].to_i
    @showtime = Showtime.find(params[:showtime_id])
    
    @order = Order.new(params[:order])
    @order.customer_id = current_customer.id
    
    quantity.times do 
      @order.tickets.build(:showtime_id => @showtime.id)
    end 
    
    if @order.save
      CartItem.find(params[:cart_item_id]).destroy
      redirect_to customer_url(current_customer)
    else
      redirect_to root_url
    end
  end
  
  def destroy
    Order.find(params[:id]).destroy
    redirect_to customer_url(current_customer)
  end
  
end
