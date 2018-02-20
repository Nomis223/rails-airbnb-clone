class AddPricePerDayToGuitars < ActiveRecord::Migration[5.1]
  def change
    add_column :guitars, :price_per_day, :integer, default: 14
  end
end
