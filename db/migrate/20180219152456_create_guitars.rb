class CreateGuitars < ActiveRecord::Migration[5.1]
  def change
    create_table :guitars do |t|
      t.string :brand
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
