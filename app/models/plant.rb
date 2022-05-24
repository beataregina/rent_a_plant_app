class Plant < ApplicationRecord
  belongs_to :user

<<<<<<< HEAD
  validates :name, :plant_type, :age, :city, :price, presence: true
  validates :age, numericality: { only_integer: true }

=======
  has_one_attached :photo

  # validates :name, :plant_type, :age, :city, :price, presence: true
  # validates :age, numericality: { only_integer: true }
>>>>>>> master
end
