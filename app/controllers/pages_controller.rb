class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @paintings = Painting.all

    if params[:query].present?
      @paintings = @paintings.global_search(params[:query])
    end

  end

  def my_orders
    @orders = current_user.orders
  end
end
