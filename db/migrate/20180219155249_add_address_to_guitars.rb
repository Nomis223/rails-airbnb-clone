class AddAddressToGuitars < ActiveRecord::Migration[5.1]
  def change
    add_column :guitars, :address, :text
  end
end
