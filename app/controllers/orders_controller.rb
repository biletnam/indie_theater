class OrdersController < ActionController::Base
  
  def create
    quantity = params[:quantity].to_i
    showtime_id = params[:showtime_id]
    
    @order = Order.new(params[:order])
    @order.customer_id = current_customer.id
    
    quantity.times { @order.tickets.build }
    
    if @order.save
      CartItem.find(params[:cart_item_id]).destroy
      redirect_to customer_url(current_customer)
    else
      redirect_to root_url
    end
  end
end
