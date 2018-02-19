class AddEndsAtToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :ends_at, :string
  end
end
