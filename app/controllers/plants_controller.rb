class PlantsController < ApplicationController
  before_action :find_plant, only: %i[show edit]

  def index
    @plants = Plant.all
  end

  def show; end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    @plant.save
    redirect_to plant_path(@plant)
  end

  def edit; end

  private

  def find_plant
    @plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:name, :plant_type, :city, :age, :price, :photo_url)
  end
end
