class CandiesController < ApplicationController
  before_action :set_candy, only: [:show, :edit, :update, :destroy]
  # CREATE
  def new
    @candy = Candy.new
  end

  def create
    @candy = Candy.create(candy_params)
    redirect_to candy_path(@candy)
  end

  # READ
  def show
  end

  def index
    @candies = Candy.all
  end

  # UPDATE
  def edit
  end

  def update
    @candy.update(candy_params)
    redirect_to candy_path(@candy)
  end

  # DELETE
  def destroy
    @candy.destroy
    redirect_to candies_path
  end

  private

  def set_candy
    @candy = Candy.find(params[:id])
  end

  def candy_params
    params.require(:candy).permit(:name, :address, :category, :rating)
  end
end
