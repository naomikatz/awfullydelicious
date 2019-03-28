class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :rating
      t.string :content
      t.belongs_to :foodie
      t.belongs_to :food

      t.timestamps
    end
  end
end
