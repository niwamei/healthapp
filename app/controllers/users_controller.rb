class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @reservations = Reservation.where(user_id: @user.id)
    @reservation = Reservation.new
  end
end
