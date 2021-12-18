class BookingsController < ApplicationController
  def create
    date = params[:booking][:starts_at].split
    @booking = Booking.new(starts_at: date.first, ends_at: date.last)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
      if @booking.save
        flash[:notice] = "Vous avez-bien réservé votre #{@car.brand} #{@car.model} ! Merci pour votre confiance"
        redirect_to car_path(@car)
      else
        redirect_to car_path(@car), notice: "Please try again"
      end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at)
  end
end
