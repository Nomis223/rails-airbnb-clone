class ChangeLatitudeTypeInGuitars < ActiveRecord::Migration[5.1]
  def change
    remove_column :guitars, :latitude
    add_column :guitars, :latitude, :float
  end
end
