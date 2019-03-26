class Food < ApplicationRecord
  has_many :reviews
  has_many :favorites
  belongs_to :category
  belongs_to :location
  has_many :foodies, through: :reviews
  has_many :foodies, through: :favorites

end
