class Api::V1::ReservationsController < ApplicationController

  def index
    all_reservations = Reservation.all.includes(:movie)
    all_reservations = all_reservations.map{|reservation|
                          reservation.attributes.merge!(
                            {movie_title:reservation.movie.name}
                            )}
    render json: all_reservations, status: 200
  end

  def create
    begin
      ActiveRecord::Base.transaction do
        if MovieFunction.find(reservation_params["movie_function_id"]).reservations_count < 10
          @reservation = Reservation.new(reservation_params)
          @reservation.save!
          render json: @reservation, status: 201
        else
          render json: {message: "Lo sentimos, ya se completò el aforo"}, status: 400
        end
      end
    rescue Exception => exc
      render json: {error: exc.message}, status: 400
    end
  end

  private

  def reservation_params
    params.require(:data).permit(
      attributes: Reservation.get_params
    )
  end
end
