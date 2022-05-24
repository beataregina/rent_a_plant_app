class Plant < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, :plant_type, :age, :city, :price, presence: true
  validates :age, numericality: { only_integer: true }

  has_one_attached :photo

  # validates :name, :plant_type, :age, :city, :price, presence: true
  # validates :age, numericality: { only_integer: true }
end
