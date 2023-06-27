class Contact < ApplicationRecord
  validates :email, format: { with: /\A.*@.*\.com\z/ }, presence: true
  validates :message, presence: true
  validates :category, presence: true, inclusion: { in: %w(shop label booking other),
    message: "%{value} is not valid" }

  before_validation :remove_whitespaces

  private

  def remove_whitespaces
    email.strip! unless email.nil?
  end
end
