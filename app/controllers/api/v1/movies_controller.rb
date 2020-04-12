class Api::V1::MoviesController < ApplicationController

  def index
    all_movies = Movie.all
    render json: {data: all_movies}, status: 200
  end

  def index_by_day
    all_movies = Day.find(params[:day_id]).movies
    render json: {data: all_movies}, status: 200
  end

  def create
    begin
      ActiveRecord::Base.transaction do
        @movie = Movie.new(movie_params)
        @movie.save!
        render json: {data: @movie}, status: 201
      end
    rescue Exception => exc
      render json: {error: exc.message}, status: 400
    end
  end

  private

  def movie_params
    params.require(:data).permit(
      attributes: Movie.get_params
    )
  end
end
