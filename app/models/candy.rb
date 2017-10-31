class Candy < ApplicationRecord
  CATEGORIES = ["fruit", "chocolate", "hard", "soft", "gummy", "other"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  validates :rating, inclusion: { in: 1..5 }
end
