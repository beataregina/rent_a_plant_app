class BookingsController < ApplicationController
  before_action :find_booking, only: :destroy
  before_action :find_plant, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.plant = @plant
    @booking.save!
    redirect_to plant_path(@plant)
  end

  def destroy
    @booking.destroy
    redirect_to plant_path(@booking.plant), status: :see_other
  end

  private

  def find_plant
    @plant = Plant.find(params[:plant_id])
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
