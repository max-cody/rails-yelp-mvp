# frozen_string_literal: true

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  VALID_CATEGORIES = %w[chinese italian japanese french belgian].freeze

  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { in: VALID_CATEGORIES }
  validates :phone_number, presence: true
end
