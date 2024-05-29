class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # @restaurant.reviews => todas as instâncias de Review com esse restaurant_id
end
