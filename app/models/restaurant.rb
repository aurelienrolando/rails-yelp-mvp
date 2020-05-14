class Restaurant < ApplicationRecord
  CATOGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :category, :address, presence: true
  validates :category, inclusion: { in: CATOGORIES,
    message: "%{value} is not a valid category" }
  has_many :reviews, dependent: :destroy
end
