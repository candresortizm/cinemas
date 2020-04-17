class Reservation < ApplicationRecord
  belongs_to :movie_function, counter_cache: :reservations_count
  has_one :movie, through: :movie_function

  def self.get_params(exclude = [])
    params = [
      :id,
      :name,
      :document,
      :email,
      :movie_function_id
    ]
  end
end
