class PaintingsController < ApplicationController

  before_action :find_painting, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:show]
  def index #homepage
    @paintings = Painting.all
  end

  def show
  end

  def new
    @painting = Painting.new
  end
  def create
    @painting = Painting.new(params_painting)
    @painting.user = current_user
    if @painting.save!
      redirect_to painting_path(@painting)
    else
      render new:, status: :unprocessable_entity
    end
  end

  def edit
  end
  def update
    @painting.update!(params_painting)
    redirect_to painting_path(@painting)
  end

  def destroy
    @painting.destroy!
    redirect_to root_path
  end

  private

  def params_painting
    params.require(:painting).permit(:title, :price, :measures, :photo)
  end

  def find_painting
    @painting = Painting.find(params[:id])
  end

  def set_user
    @author = User.find(@painting.user_id)
  end
end
