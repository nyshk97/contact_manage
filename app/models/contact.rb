# frozen_string_literal: true

class Contact < ApplicationRecord
  has_many :comments
  belongs_to :user
  scope :status, ->(status) { where(status: status).order(id: :desc) }
  scope :active, -> { where.not(status: 2).order(id: :desc) }
  validates :name, presence: true
  validates :content, presence: true, length: { maximum: 1000 }
end
