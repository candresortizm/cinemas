class MovieFunction < ApplicationRecord
  belongs_to :movie
  has_many :reservations

  def self.get_params(exclude = [])
    params = [
      :id,
      :movie_id
    ]
  end
end
