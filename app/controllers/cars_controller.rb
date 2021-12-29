class CarsController < ApplicationController
  def index
    # raise
    if params[:address].present?
      @cars = Car.near(params[:address], 15).where.not(latitude: nil, longitude: nil)

      @markers = @cars.geocoded.map do |car|
        {
          lat: car.latitude,
          lng: car.longitude,
          info_window: render_to_string(partial: "info_window", locals: { car: car })
        }
      end
    else
      @cars = Car.all
    end
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new

    @cars = Car.where(address: @car.address)
    @markers = @cars.geocoded.map do |car|
        {
          lat: car.latitude,
          lng: car.longitude,
          info_window: render_to_string(partial: "info_window", locals: { car: car })
        }
    end
  end

  def new
    @car = Car.new
  end

end
