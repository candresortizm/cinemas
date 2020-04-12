class Day < ApplicationRecord
  has_many :movie_functions
  has_many :movies, through: :movie_functions
end
