class AddLatitudeToGuitars < ActiveRecord::Migration[5.1]
  def change
    add_column :guitars, :latitude, :string
  end
end
