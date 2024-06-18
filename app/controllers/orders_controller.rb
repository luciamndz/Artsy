class OrdersController < ApplicationController

  before_action :set_painting

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(params_orders)
    @order.painting = @painting
    if @order.save!
      redirect_to orders_path(@order)
    else
      render new:, status: :unprocessable_entity
    end
  end

  private

  def set_painting
    @painting = Painting.new(params[:id])
  end

  def params_orders
    params.require(:order).permit(:painting_id, :user_id, :user_buyer_id)
  end
end
