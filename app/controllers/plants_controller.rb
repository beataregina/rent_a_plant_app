class PlantsController < ApplicationController
  before_action :find_plant, only: %i[show edit destroy update]

  def index
    if params[:query].present?
        @plants = Plant.where('city ILIKE ?', "%#{params[:query]}%")
    else
      @plants = Plant.all
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    @plant.save
    redirect_to plant_path(@plant)
  end

  def edit
  end

  def update
    @plant.update(plant_params)
    redirect_to plant_path(@plant)
  end

  def destroy
    @plant.destroy
    redirect_to plant_path, status: :see_other
  end

  private

  def find_plant
    @plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:name, :plant_type, :city, :age, :price, :description, :photo)
  end
end
