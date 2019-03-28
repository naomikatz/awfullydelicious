class Review < ApplicationRecord
  validates :foodie_id, presence: true
  belongs_to :foodie
  belongs_to :food

end
