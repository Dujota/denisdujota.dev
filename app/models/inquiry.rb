class Inquiry < ApplicationRecord
  validates :name, :message, presence: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/i }
end
