class PaintingsController < ApplicationController

  before_action :find_painting, only: [:show, :edit, :update, :destroy]
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
    params.require(:painting).permit(:title, :price, :measures, :user_id)
  end

  def find_painting
    @painting = @painting = Painting.find(params[:id])
  end

end
