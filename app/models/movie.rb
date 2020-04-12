class Movie < ApplicationRecord
  has_many :movie_functions
  has_many :days, through: :movie_functions
  accepts_nested_attributes_for :movie_functions, allow_destroy: true

  def self.get_params(exclude = [])
    params = [
      :id,
      :name,
      :description,
      :image,
      movie_function_attributes: MovieFunction.get_params
    ]
  end
end
