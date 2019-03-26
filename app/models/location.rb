class Location < ApplicationRecord
  has_many :foods
  has_many :categories, through: :foods
end
