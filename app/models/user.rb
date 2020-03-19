class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :comment
  has_many :contacts
  validates :email, presence: true, uniqueness: true

  def set_activation_token
    self.activation_token = SecureRandom.urlsafe_base64
    self.activation_token_expires_at = Time.zone.now + 5.hours
  end
end
