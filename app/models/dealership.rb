class Dealership < ApplicationRecord
  has_many :cars
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
end