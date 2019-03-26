class Foodie < ApplicationRecord
  has_many :reviews
  has_many :favorites
  has_many :foods, through: :reviews
  has_many :foods, through: :favorites
end
