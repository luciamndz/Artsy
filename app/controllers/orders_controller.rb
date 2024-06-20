class OrdersController < ApplicationController

  before_action :set_painting, only: [:new, :create]

  def index #muestra historial de órdenes
    @orders = Order.all
  end

  def new #formato vacío para crear orden
  end

  def create #orden creada
    @order = Order.new
    @order.painting = @art
    @order.user = current_user
    @order.price = @art.price
    if @order.save!
      @art.purchased = true
      @art.save
      redirect_to my_orders_path
    else
      render new:, status: :unprocessable_entity
    end
  end

  private

  def set_painting
    @art = Painting.find(params[:painting_id])
  end

  # def params_orders
  #   params.require(:order).permit(:price)
  # end
end
