class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    # raise
    if params[:address].present?
      @cars = policy_scope(Car).near(params[:address], 15).where.not(latitude: nil, longitude: nil)
      # @cars = Car.near(params[:address], 15).where.not(latitude: nil, longitude: nil)

      @markers = @cars.geocoded.map do |car|
        {
          lat: car.latitude,
          lng: car.longitude,
          info_window: render_to_string(partial: "info_window", locals: { car: car })
        }
      end
    else
      @cars = policy_scope(Car)
    end
  end

  def my_location
    @cars = Car.where(user: current_user)
    authorize @cars
  end

  def show
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

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to car_path(@car), notice: 'Votre voiture a bien été mise à jour'
    else
      render :edit
    end
  end

  def new
    @car = Car.new
    authorize @car
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    authorize @car
    if @car.save!
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def destroy
    @car.destroy
    if current_user.admin
      redirect_to my_location_cars_path, notice: 'Votre voiture a bien été suprimée'
    else
      redirect_to my_location_cars_path, notice: 'Votre voiture a bien été suprimée'
    end
  end

  private

  def set_car
    @car = Car.find(params[:id])
    authorize @car
  end

  def car_params
    params.require(:car).permit(:brand, :model, :year_of_production, :address, :price_per_day, :photo)
  end

end
