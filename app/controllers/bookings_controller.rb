class BookingsController < ApplicationController
  def create
    date = params[:booking][:starts_at].split
    @booking = Booking.new(starts_at: date.first, ends_at: date.last)
    authorize @booking
    @car = Car.find(params[:car_id])
    authorize @car
    @booking.car = @car
    @booking.user = current_user
      if @booking.save
        flash[:notice] = "Vous avez-bien réservé votre #{@car.brand} #{@car.model} ! Merci pour votre confiance"
        redirect_to my_booking_cars_path
      else
        redirect_to car_path(@car), notice: "La réservation n'a pas pu être faite...."
      end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at)
  end
end
