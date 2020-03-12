class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :comment
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true
end
