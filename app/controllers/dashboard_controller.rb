class DashboardController < ApplicationController
  def show
    @bookings = Booking.where(user: current_user)
    @plants = Plant.where(user: current_user)
  end
end
