# frozen_string_literal: true

class Contact < ApplicationRecord
  has_many :comments
  scope :status, ->(status) { where(status: status) }
  scope :active, -> { where.not(status: 2) }
  validates :name, presence: true
  validates :content, presence: true, length: { maximum: 1000 }
end
