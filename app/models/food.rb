class Food < ApplicationRecord
  has_many :reviews
  has_many :favorites
  belongs_to :category
  belongs_to :location
  has_many :foodies, through: :reviews
  has_many :foodies, through: :favorites

  def self.search(search)
    if search
      category = Category.find_by(name: search)
      if category
        self.where(category_id: category)
      else
        Food.all
      end
    else
      Food.all
    end
  end

  def avg_rating
    ratings = self.reviews.map do |r|
      r.rating
  end
    ratings.inject(:+) / ratings.length
  end

end
