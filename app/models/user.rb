class User < ApplicationRecord
  has_secure_password

  before_save :email_downcase

  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }

  private

  def email_downcase
    self.email = email.downcase
  end
end
