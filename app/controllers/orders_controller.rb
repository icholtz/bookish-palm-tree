class OrdersController < ApplicationController #The line declares a class that inherits from ApplicationController, meaning it has access to all the methods inside your application_controller.rb file
  def index
    # @orders = Order.all
    # @umbrellas = Umbrella.all
    @orders = Order.includes(:umbrella).all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end
end
