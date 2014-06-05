class BikesController < ApplicationController

  def index
    @bike = Bike.new
    @bikes = Bike.all
  end

  def create
    @bike = Bike.create(bike_params)
    if @bike.save
      redirect_to bikes_path
    else
      render :index
    end
  end

  private
  def bike_params
    params.require(:bike).permit(:brand, :color)
  end
end