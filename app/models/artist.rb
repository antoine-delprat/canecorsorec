class Artist < ApplicationRecord
  has_many :releases
  has_many :bookings
  has_one_attached :avatar

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :performance, presence: true
  validates :city, presence: true
end
