class CustomersController < ApplicationController
  
  before_filter :authenticate_customer!
  
  def show
    @customer = current_customer
    @cart_items = current_customer.cart_items
    @orders = current_customer.orders
    @order = Order.new
  end
  
  def edit
    @customer = Customer.find(params[:id])
    
    unless @customer == current_customer
      redirect_to root_url
    end
  end
  
  def update
    @customer = Customer.find(params[:id])
    
    if @customer.update_attributes(params[:customer])
      redirect_to customer_url(@customer)
    else
      render :edit
    end
  end
end
