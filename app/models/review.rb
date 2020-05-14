class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, acceptance: { accept: (0..5)}
  validates :rating, numericality: { only_integer: true,
    message: "%{value} should be between 0 and 5" }
end
