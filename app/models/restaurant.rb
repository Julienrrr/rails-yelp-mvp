class Restaurant < ApplicationRecord
  CAT = %w(chinese italian japanese french belgian)
  has_many :reviews, dependent: :destroy
  validates :category, :name, :address, presence: true
  validates :category, inclusion: { in: CAT }
end
