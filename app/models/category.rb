class Category < ApplicationRecord
  has_many :foods
  has_many :locations, through: :foods
end
