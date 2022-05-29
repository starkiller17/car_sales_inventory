class Car < ApplicationRecord
  belongs_to :dealerships
  validates :serial_number, presence: true, uniqueness: true
  validates :model, :brand, :year, :price, :car_type, presence: true
end