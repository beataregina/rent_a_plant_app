class Plant < ApplicationRecord
  belongs_to :user

  validates :name, :plant_type, :age, :city, :price, presence: true
  validates :age, numericality: { only_integer: true }

end
