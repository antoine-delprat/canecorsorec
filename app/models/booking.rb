class Booking < ApplicationRecord
  belongs_to :artist

  validates :booking_date, presence: true
  validates :city, presence: true
  validates :promoter_name, presence: true
  validates :event_name, presence: true
  validates :email, format: { with: /\A.*@.*\.com\z/ }, presence: true
  validates :message, presence: true
  validates :amount_offered, presence: true, numericality: { only_integer: true }

  before_validation :remove_whitespaces

  private

  def remove_whitespaces
    email.strip! unless email.nil?
  end
end
