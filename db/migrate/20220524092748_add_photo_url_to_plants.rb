class AddPhotoUrlToPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :photo_url, :string
  end
end
