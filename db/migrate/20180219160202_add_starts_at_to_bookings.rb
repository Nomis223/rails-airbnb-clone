class AddStartsAtToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :starts_at, :string
  end
end
