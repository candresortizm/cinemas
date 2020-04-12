class MovieFunction < ApplicationRecord
  belongs_to :day
  belongs_to :movie
  has_many :reservations

  def self.get_params(exclude = [])
    params = [
      :id,
      :day_id,
      :movie_id
    ]
  end
end
