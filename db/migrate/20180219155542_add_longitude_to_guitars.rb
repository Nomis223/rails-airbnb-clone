class AddLongitudeToGuitars < ActiveRecord::Migration[5.1]
  def change
    add_column :guitars, :longitude, :string
  end
end
