class Event < ApplicationRecord
  has_one_attached :cover

  validates :name, presence: true
  validates :date, presence: true
  validates :city, presence: true
end
