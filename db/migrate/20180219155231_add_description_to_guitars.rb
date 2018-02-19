class AddDescriptionToGuitars < ActiveRecord::Migration[5.1]
  def change
    add_column :guitars, :description, :text
  end
end
