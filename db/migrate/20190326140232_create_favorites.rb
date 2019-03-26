class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.belongs_to :foodie
      t.belongs_to :food

      t.timestamps
    end
  end
end
