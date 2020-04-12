class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :movie_function, null: false, index: true, foreign_key: true
      t.string :name
      t.string :document
      t.string :email

      t.timestamps
    end
  end
end
