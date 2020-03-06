# frozen_string_literal: true

class Contact < ApplicationRecord
  scope :status, ->(status) { where(status: status) }
  validates :name, presence: true
  validates :content, presence: true, length: { maximum: 1000 }
end
