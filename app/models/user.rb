class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :comment
  has_many :contacts
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
