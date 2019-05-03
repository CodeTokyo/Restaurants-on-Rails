class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
