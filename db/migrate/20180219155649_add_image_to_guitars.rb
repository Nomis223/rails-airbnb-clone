class AddImageToGuitars < ActiveRecord::Migration[5.1]
  def change
    add_column :guitars, :image, :string
  end
end
