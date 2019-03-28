class Review < ApplicationRecord
  belongs_to :foodie
  belongs_to :food
  
end
