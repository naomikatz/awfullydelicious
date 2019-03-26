class Review < ApplicationRecord
  belongs_to :foodie
  belongs_to :food
  has_one_attached :image
end
