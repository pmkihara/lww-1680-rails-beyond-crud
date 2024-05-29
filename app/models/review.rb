class Review < ApplicationRecord
  belongs_to :restaurant
  # @review.restaurant => instância de Restaurant
  # Restaurant.find(@review.restaurant_id)

  validates :content, presence: true
end
