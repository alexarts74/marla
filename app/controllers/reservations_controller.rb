class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

#   def new
#     @reservation = Reservation.new
#   end

#   def create
#     @human = @Human.find(params[:human_id])
#     @reservation = Reservation.new(reservation_params)
#     @reservation.human = @human
#     if @reservation.save
#       redirect_to @reservations
#     end
#   end

#   def destroy
#     @reservation = Reservation.find(params[:id])
#     @reservation.destroy
#     redirect_to @reservation.human
#   end
# end
