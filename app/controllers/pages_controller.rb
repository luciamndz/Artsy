class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @paintings = Painting.all
  end

  def my_orders
    @orders = current_user.orders
  end
end
