class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :plant_type
      t.string :city
      t.integer :age
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
