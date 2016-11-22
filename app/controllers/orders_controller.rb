class OrdersController < ApplicationController

  before_action :authenticate_user!

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(params.require(:order).permit(:name, :phone, :address, :delivery_date, :product_id, :payment_option, :amount, :order_status))

    if @order.save
      redirect_to orders_path, :notice=> 'Order was successfully created.'
    else
      redirect_to new_order_path, :alert=> 'Error! Please try again'
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])

    if @order.update(params.require(:order).permit(:name, :phone, :address, :delivery_date, :product_id, :payment_option, :amount, :order_status))
      redirect_to orders_path, :notice=> 'Order was successfully updated.'
    else
      redirect_to new_order_path, :alert=> 'Error! Please try again'
    end
  end

  def destroy
    @order = Order.find(params[:id])
    if @order.destroy
      redirect_to orders_path, :notice => 'Order was successfully deleted.'
    else
      redirect_to orders_path, :alert => 'Error! Please try again'
    end
  end
end
