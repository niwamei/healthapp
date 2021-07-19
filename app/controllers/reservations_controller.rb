class ReservationsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id
    if @reservation.save
      redirect_to user_path(current_user.id)
    else
      render action: :new
    end
    # @reservations = Reservation.where(user_id: current_user.id)
  end

  def index
    @reservations = Reservation.where(user_id: current_user.id)
  end

  def show
  end

  def edit
    unless @reservation.user == current_user
      redirect_to root_path
    end
  end

  def update
    @reservation.update(reservation_params) ? (redirect_to event_path(@event)) : (render 'edit')
  end

  def destroy
    @reservation.destroy
    redirect_to my_calendar_path
  end

  def my_calendar
  end

  private
  def set_event
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:department_id, :name, :location, :start, :end, :note).merge(user_id: current_user.id)
  end
end
