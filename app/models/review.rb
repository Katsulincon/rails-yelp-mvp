class Review < ApplicationRecord
  RATES = (0..5).to_a
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 0..5 }, numericality: true
end
