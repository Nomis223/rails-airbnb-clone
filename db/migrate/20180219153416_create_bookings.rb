class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :fixed_price
      t.references :guitar, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end