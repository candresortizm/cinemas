class Api::V1::MoviesController < ApplicationController

  def index
    all_movies = Movie.all
    render json: all_movies, status: 200
  end

  def index_by_day
    all_movies = MovieFunction.find_by(date: params[:day]).movies
    render json: all_movies, status: 200
  end

  def create
    begin
      ActiveRecord::Base.transaction do
        @movie = Movie.new(movie_params)
        @movie.save!
        render json: @movie, status: 201
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
