class Release < ApplicationRecord
  belongs_to :artist
  has_one_attached :photo

  validates :name, presence: true
  validates :release_date, presence: true
end
