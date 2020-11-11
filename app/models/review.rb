class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: (0..5), message: "Wrong rating" }, numericality: { only_integer: true}
end
