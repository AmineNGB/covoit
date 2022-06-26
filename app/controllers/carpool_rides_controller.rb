class CarpoolRidesController < ApplicationController
  def index
    @carpool_rides = CarpoolRide.all
    @markers = @carpool_rides.geocoded.map do |ride|
      {
        lat: ride.latitude,
        lng: ride.longitude
      }
    end
  end

  def show
    @carpool_ride = CarpoolRide.find(params[:id])

  end

  def new
    @carpool_ride = CarpoolRide.new()
  end

  def create
    @carpool_ride = CarpoolRide.new(carpool_ride_params)
    if @carpool_ride.save
      redirect_to carpool_ride_path(@carpool_ride)
    else
      render :new
    end

  end

  def edit
    @carpool_ride = CarpoolRide.find(params[:id])
  end

  def update
    @carpool_ride = CarpoolRide.find(params[:id])
    @carpool_ride.update(carpool_ride_params)

    redirect_to carpool_ride_path(@carpool_ride)
  end

  def destroy
    @carpool_ride = CarpoolRide.find(params[:id])
    @carpool_ride.destroy
  end

  private
  def carpool_ride_params
    params.require(:carpool_ride).permit(:departure_address, :arrival_address, :ride_date, :passenger_number)
  end
end
