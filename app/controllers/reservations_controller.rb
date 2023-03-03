class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.where(dog: current_dog)
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @human = Human.find(params[:human_id])
    @reservation = Reservation.new
  end

  def create
    @human = Human.find(params[:human_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.dog = current_dog
    @reservation.human = @human
    if @reservation.save!
      redirect_to reservations_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date)
  end
end
