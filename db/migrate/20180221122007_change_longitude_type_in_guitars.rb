class ChangeLongitudeTypeInGuitars < ActiveRecord::Migration[5.1]
  def change
    remove_column :guitars, :longitude
    add_column :guitars, :longitude, :float
  end
end
