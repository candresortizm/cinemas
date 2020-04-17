class CreateMovieFunctions < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_functions do |t|
      t.date :day, null: false
      t.references :movie, null: false, index: true, foreign_key: true
      t.integer :reservations_count

      t.timestamps
    end
  end
end
