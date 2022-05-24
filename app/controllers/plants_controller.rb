class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def new
    @plant = Plant.new
  end
end
