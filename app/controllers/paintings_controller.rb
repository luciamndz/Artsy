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
    redirect_to painting_path
  end

  def destroy
    @painting.destroy!
    redirect_to paintings_path
  end

  private

  def params_painting
    params.require(:painting).permit(:title, :price, :measures, :user_id, :photo)
  end

  def find_painting
    @painting = Painting.find(params[:id])
  end

  def set_user
    @user = User.find(@painting.user_id)
  end
end
