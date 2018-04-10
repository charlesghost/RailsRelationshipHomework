class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  
  def index
    @orders = Order.all
  end

  
  def show
  end

  
  def new
    @order = Order.new
    @users = User.all
  end

  
  def edit
  end

  
  def create
    @order = Order.new(order_params)
    @order.save
    redirect_to orders_path
  end

  
  def update
    @order.update(order_params)
    redirect_to @order
  end

  
  def destroy
    @order.destroy
    redirect_to users_path
  end

  def set_order
    @order = Order.find(params[:id])
  end

      
  def order_params
    params.require(:order).permit(:total, :user_id)
  end
end
